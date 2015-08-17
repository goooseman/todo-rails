module TodoRails
  class Engine < ::Rails::Engine

    require 'bower-rails'
    require 'haml'
    require 'haml-rails'
    require 'sass-rails'
    require 'coffee-rails'

    isolate_namespace TodoRails

    initializer :append_migrations do |app|
      unless app.root.to_s.match(root.to_s)
        config.paths["db/migrate"].expanded.each do |p|
          app.config.paths["db/migrate"] << p
        end
      end
    end
  end
end
