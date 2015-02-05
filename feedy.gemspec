$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "feedy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "feedy"
  s.version     = Feedy::VERSION
  s.authors     = ["Sung Won Cho"]
  s.email       = ["mikeswcho@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "feedy"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "generator_spec", "~> 0.9.3"
  s.add_development_dependency "shoulda", '~> 3.5.0'
end
