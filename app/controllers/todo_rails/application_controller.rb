module TodoRails
  class ApplicationController < ActionController::Base
    before_action :set_settings

    def set_settings
      @config = YAML.load_file(Rails.root.join('config/todo-rails.yml'))
    end
  end
end
