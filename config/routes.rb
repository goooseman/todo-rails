TodoRails::Engine.routes.draw do
  resources :tasks, except: [:new, :edit]
  root 'index#index'
end
