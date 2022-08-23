# This file is used by Rack-based servers to start the application.



require_relative "config/environment"

run Rails.application
Rails.application.load_server

Rails.application.routes.draw do
  root  "pages#home"
  get "/articles", to: "articles#index"
  #root "articles#index"
  get "/home", to: "pages#home"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"

end
