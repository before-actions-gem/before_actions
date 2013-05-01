$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "load_resource/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "load_resource"
  s.version     = LoadResource::VERSION
  s.authors     = ["James Pinto"]
  s.email       = ["james@rubyfactory.net"]
  s.homepage    = "https://github.com/yakko/load_resource"
  s.summary     = "Simplified solution for restful resources in Rails."
  s.description = "Loading all your resources before the action not only makes your code cleaner, but also makes authorization and nested routes easier."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  # s.add_dependency "rails", "~> 4.0.0.beta1"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
