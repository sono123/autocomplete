Rails.application.routes.draw do
  resources :movies
  resources :directors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get :search, controller: :main
  root to: "main#index"
end
