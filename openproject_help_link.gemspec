$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "openproject_help_link/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openproject_help_link"
  s.version     = HelpLink::VERSION
  s.authors     = ["Finn GmbH"]
  s.email       = ["info@openproject.org"]
  s.homepage    = "http://www.openproject.org"
  s.summary     = "Help link targettarget  configuration"
  s.description = "This plugin allows you to change the target of the help link
                   in your OpenProject. Doing so allows you to e.g. have a
                   support project within your OpenProject."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["GPL", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"

  s.add_development_dependency "sqlite3"
end