$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "switchblox_events/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "switchblox_events"
  s.version     = SwitchbloxEvents::VERSION
  s.authors     = ["RC"]
  s.email       = ["rackerman@switchboxinc.com"]
  s.homepage    = "http://www.switchboxinc.com"
  s.summary     = "Summary of SwitchbloxEvents."
  s.description = "Description of SwitchbloxEvents."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.1"

  s.add_development_dependency "sqlite3"
end
