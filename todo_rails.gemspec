$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "todo_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "todo_rails"
  s.version     = TodoRails::VERSION
  s.authors     = ["goooseman"]
  s.email       = ["inbox@goooseman.ru"]
  s.homepage    = "https://github.com/goooseman/todo-rails"
  s.summary     = "A rails engine with a simple todo app."
  s.description = "Make a simple todo app on your web app with just two line of codes. It is really easy to share your tasks about your web app with other with this app."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"



  s.add_dependency 'bower-rails'
  s.add_dependency 'haml'
  s.add_dependency 'haml-rails'
  s.add_dependency 'sass-rails'
  s.add_dependency 'coffee-rails'

  s.add_development_dependency "sqlite3"
end
