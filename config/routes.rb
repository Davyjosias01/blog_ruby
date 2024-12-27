Rails.application.routes.draw do
  # get "/", controller: "home", action: "index"

  root "home#index"

  resources :vehicles, only: [ :index, :new, :create, :show, :edit, :update, :destroy ]


  # ===========================CRUD RESTFUL=================================
  # Estas rotas seguem o padrão restful, mas feitas na unha, geralmente não é feito dessa maneira.

  # get "/vehicles", controller: "vehicles", action: "index" # Para capturar todos os registro/veículo

  # get "/vehicles/new", controller: "vehicles", action: "new" # Rota para o formulário de novo registro/veículo
  # post "/vehicles", controller: "vehicles", action: "create" # Rota para criar um novo registro/veículo

  # get "/vehicles/:id", controller: "vehicles", action: "show" # Rota para capturar um determinado registro/veículo

  # get "/vehicles/:id/edit", controller: "vehicles", action: "edit" # Rota para o formulário de edição de um novo registro/veículo

  # put "/vehicles/:id", controller: "vehicles", action: "update"
  # patch "/vehicles/:id", controller: "vehicles", action: "update" # Rota para alterar um registro/veículo

  # delete "/vehicles/:id", controller: "vehicles", action: "destroy" # Rota para deletar um registro/veículo

  # ========================================================================
end
