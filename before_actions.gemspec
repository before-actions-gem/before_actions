$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "before_actions/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "before_actions"
  spec.version     = BeforeActions::VERSION
  spec.authors     = ["James Pinto"]
  spec.email       = ["tjamespinto@gmail.com"]
  spec.homepage    = "https://github.com/before-actions-gem/before_actions"
  spec.summary     = "Rails Gem to organize your controllers"
  spec.description = "Organize your controllers by grouping your before and after filter."

  spec.license = 'MIT'

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  #
  spec.add_runtime_dependency 'rails', ['>= 3.1', '< 5.0']

  # test
  spec.test_files = Dir["spec/**/*"]
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency 'rspec-rails'
end
