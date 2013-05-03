$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "welcome/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "welcome"
  s.version     = Welcome::VERSION
  s.authors     = ["@thomasmckay"]
  s.email       = ["thomasmckay@redhat.com"]
  s.homepage    = "http://www.katello.org"
  s.summary     = "katello.org as katello engine plugin"
  s.description = "katello.org as katello engine plugin"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
