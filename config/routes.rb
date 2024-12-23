Rails.application.routes.draw do
  # get "/", controller: "home", action: "index"

  root "home#index"
end
