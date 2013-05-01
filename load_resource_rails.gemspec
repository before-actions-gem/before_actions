$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "load_resource_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "load_resource_rails"
  s.version     = LoadResourceRails::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of LoadResourceRails."
  s.description = "TODO: Description of LoadResourceRails."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0.beta1"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
