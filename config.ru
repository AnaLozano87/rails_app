# This file is used by Rack-based servers to start the application.



require_relative "config/environment"

run Rails.application
Rails.application.load_server

Rails.application.routes.draw do
  root  'page#home'
  get "/articles", to: "articles#index"
  #root "articles#index"
  get "/about", to: "pages#about"

end
