# -*- encoding: utf-8 -*-
# stub: devise-twilio-verify 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "devise-twilio-verify".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/jayywolff/twilio-verify-devise/issues", "change_log_uri" => "https://github.com/jayywolff/twilio-verify-devise/blob/master/CHANGELOG.md", "documentation_uri" => "https://github.com/jayywolff/twilio-verify-devise", "homepage_uri" => "https://github.com/jayywolff/twilio-verify-devise", "source_code_uri" => "https://github.com/jayywolff/twilio-verify-devise" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jay Wolff".freeze]
  s.date = "2024-02-07"
  s.description = "Twilio Verify plugin to add two factor authentication to Devise. This gem is meant to make migrating from authy to twilio verify as simple as possible, please see the README for details.".freeze
  s.files = [".document".freeze, ".github/workflows/build.yml".freeze, ".gitignore".freeze, ".rspec".freeze, "Appraisals".freeze, "CHANGELOG.md".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "app/assets/javascripts/devise_twilio_verify.js".freeze, "app/assets/stylesheets/devise_twilio_verify.css".freeze, "app/assets/stylesheets/devise_twilio_verify.sass".freeze, "app/controllers/devise/devise_twilio_verify_controller.rb".freeze, "app/controllers/devise_twilio_verify/passwords_controller.rb".freeze, "app/services/twilio_verify_service.rb".freeze, "app/views/devise/enable_twilio_verify.html.erb".freeze, "app/views/devise/enable_twilio_verify.html.haml".freeze, "app/views/devise/verify_twilio_verify.html.erb".freeze, "app/views/devise/verify_twilio_verify.html.haml".freeze, "app/views/devise/verify_twilio_verify_installation.html.erb".freeze, "app/views/devise/verify_twilio_verify_installation.html.haml".freeze, "config.ru".freeze, "config/locales/en.yml".freeze, "devise-twilio-verify.gemspec".freeze, "gemfiles/.bundle/config".freeze, "gemfiles/rails_5_2.gemfile".freeze, "gemfiles/rails_6.gemfile".freeze, "lib/devise-twilio-verify.rb".freeze, "lib/devise-twilio-verify/controllers/helpers.rb".freeze, "lib/devise-twilio-verify/controllers/view_helpers.rb".freeze, "lib/devise-twilio-verify/hooks/twilio_verify_authenticatable.rb".freeze, "lib/devise-twilio-verify/mapping.rb".freeze, "lib/devise-twilio-verify/models/twilio_verify_authenticatable.rb".freeze, "lib/devise-twilio-verify/models/twilio_verify_lockable.rb".freeze, "lib/devise-twilio-verify/rails.rb".freeze, "lib/devise-twilio-verify/routes.rb".freeze, "lib/devise-twilio-verify/version.rb".freeze, "lib/generators/active_record/devise_twilio_verify_generator.rb".freeze, "lib/generators/active_record/templates/migration.rb".freeze, "lib/generators/devise_twilio_verify/devise_twilio_verify_generator.rb".freeze, "lib/generators/devise_twilio_verify/install_generator.rb".freeze]
  s.homepage = "https://github.com/jayywolff/twilio-verify-devise".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Twilio Verify plugin to add two factor authentication to Devise.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<devise>.freeze, [">= 4.0.0"])
    s.add_runtime_dependency(%q<twilio-ruby>.freeze, ["~> 5.74"])
    s.add_development_dependency(%q<appraisal>.freeze, ["~> 2.2"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.16"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<combustion>.freeze, ["~> 1.1"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<rails-controller-testing>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.9.11"])
    s.add_development_dependency(%q<rdoc>.freeze, ["~> 4.3.0"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.17.1"])
    s.add_development_dependency(%q<webmock>.freeze, ["~> 3.11.0"])
    s.add_development_dependency(%q<rails>.freeze, [">= 5"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_development_dependency(%q<generator_spec>.freeze, [">= 0"])
    s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 1.7"])
    s.add_development_dependency(%q<factory_bot_rails>.freeze, ["~> 5.1.1"])
  else
    s.add_dependency(%q<devise>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<twilio-ruby>.freeze, ["~> 5.74"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 2.2"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.16"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<combustion>.freeze, ["~> 1.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<rails-controller-testing>.freeze, ["~> 1.0"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9.11"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 4.3.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.17.1"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.11.0"])
    s.add_dependency(%q<rails>.freeze, [">= 5"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<generator_spec>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.7"])
    s.add_dependency(%q<factory_bot_rails>.freeze, ["~> 5.1.1"])
  end
end
