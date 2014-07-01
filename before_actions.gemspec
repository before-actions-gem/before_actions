$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "before_actions/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "before_actions"
  s.version     = BeforeActions::VERSION
  s.authors     = ["James Pinto"]
  s.email       = ["tjamespinto@gmail.com"]
  s.homepage    = "https://github.com/before-actions-gem/before_actions"
  s.summary     = "Rails Gem to organize your controllres"
  s.description = "Organize your controllers by grouping your before and after filters."

  s.license = 'MIT'

  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  # s.add_dependency "rails", "~> 4.0.0.beta1"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
