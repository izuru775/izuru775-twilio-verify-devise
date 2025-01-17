class TwilioVerifyService
  attr_reader :twilio_client, :twilio_account_sid, :twilio_auth_token, :twilio_verify_service_sid

  def self.send_sms_token(phone_number,country_code)
    new.twilio_verify_service.verifications.create(to: e164_format(phone_number,country_code), channel: 'sms')
  end

  def self.verify_sms_token(phone_number, token ,country_code)
    new.twilio_verify_service.verification_checks.create(to: e164_format(phone_number,country_code), code: token)
  end

  def self.verify_totp_token(user, token)
    new.twilio_verify_service_v2
      .entities([Rails.env, user.id].join('-'))
      .challenges
      .create(auth_payload: token, factor_sid: user.twilio_totp_factor_sid)
  end

  def self.setup_totp_service(user)
    new_factor = new.twilio_verify_service_v2
      .entities([Rails.env, user.id].join('-'))
      .new_factors
      .create(friendly_name: user.to_s, factor_type: 'totp')

    user.update(twilio_totp_factor_sid: new_factor.sid)

    # Now in your app, take the new_factor.binding.uri
    # and generate a qr code to present to the user to scan to add the app to their authenticator app
    new_factor
  end

  def self.register_totp_service(user, token)
    # After user adds the app to their authenticator app, register the user by having them confirm a token
    # if this returns factor.status == 'verified', the user has been properly setup
    new.twilio_verify_service_v2
      .entities([Rails.env, user.id].join('-'))
      .factors(user.twilio_totp_factor_sid)
      .update(auth_payload: token)
  end

  def self.e164_format(phone_number,country_code)
    "+#{country_code}#{phone_number.gsub(/[^0-9a-z\\s]/i, '')}"
  end

  def initialize
    @twilio_account_sid = ENV['TWILIO_ACCOUNT_SID']
    @twilio_auth_token =  ENV['TWILIO_AUTH_TOKEN']
    @twilio_verify_service_sid =  ENV['TWILIO_VERIFY_SERVICE_SID']

    raise 'Missing Twilio credentials' unless @twilio_account_sid && @twilio_auth_token && @twilio_verify_service_sid

    @twilio_client = Twilio::REST::Client.new(@twilio_account_sid, @twilio_auth_token)
  end

  def twilio_verify_service
    twilio_client.verify.services(twilio_verify_service_sid)
  end

  def twilio_verify_service_v2
    twilio_client.verify.v2.services(twilio_verify_service_sid)
  end

  def e164_format(phone_number,country_code)
    self.class.e164_format(phone_number, country_code)
  end
end
