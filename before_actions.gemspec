$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "before_actions/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "before_actions"
  spec.version     = BeforeActions::VERSION
  spec.authors     = ["James Pinto"]
  spec.email       = ["thejamespinto@gmail.com"]
  spec.homepage    = "https://github.com/before-actions-gem/before_actions"
  spec.summary     = "Organize Your Rails Controllers"
  spec.description = "Organize your code by grouping your controller callbacks."

  spec.license = 'MIT'

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # test
  spec.test_files = Dir["spec/**/*"]
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'codeclimate-test-reporter'
end
