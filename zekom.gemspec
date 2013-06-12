$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "zekom/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "zekom"
  s.version     = Zekom::VERSION
  s.authors     = "Miha Mencin"
  s.email       = "miha.mencin@gmail.com"
  s.homepage    = "http://github.com/radiokills/zekom"
  s.summary     = "Engine to help with European cooke directive - Slovenian flavour"
  s.description = "Engine to help with European cooke directive - Slovenian flavour"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]


  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'guard-rspec'
  s.test_files = Dir["spec/**/*"]
end
