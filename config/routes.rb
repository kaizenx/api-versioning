SimpleServer::Application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, constraints: { format: :json } do
    scope module: :v1, constraints: ApiConstraints.new(version: 1) do
      # Orders
      resources :orders
    end
    scope module: :v2, constraints: ApiConstraints.new(version: 2, default: true) do
      # Orders
      resources :orders
    end
  end
end
