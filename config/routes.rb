Rails.application.routes.draw do
  # get "/", controller: "home", action: "index"

  root "home#index"

  get "/", controller: "vehicles", action: "index"
end
