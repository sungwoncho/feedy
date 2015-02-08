$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "feedy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "feedy"
  s.version     = Feedy::VERSION
  s.authors     = ["Sung Won Cho"]
  s.email       = ["mikeswcho@gmail.com"]
  s.homepage    = "https://github.com/sungwoncho/feedy"
  s.summary     = "Feedy lets you collect and analyze user feedback with ease."
  s.description = "Feedy lets you collect and analyze user feedback with ease."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0"

  s.add_development_dependency "sqlite3", "~> 1.3"
  s.add_development_dependency "rspec-rails", "~> 3.0"
  s.add_development_dependency "guard-rspec", "~> 4.5.0"
  s.add_development_dependency "generator_spec", "~> 0.9.3"
  s.add_development_dependency "shoulda", "~> 3.5"
  s.add_development_dependency "factory_girl_rails", "~> 4.5.0"
  s.add_development_dependency "jquery-rails"
end
