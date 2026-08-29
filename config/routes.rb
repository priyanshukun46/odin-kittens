Rails.application.routes.draw do
  get "kittens/index"
  get "kittens/new"
  get "kittens/edit"
  get "kittens/show"
  get "kittens/update"
  get "kittens/delete"
  get "kittens/create"
  get "up" => "rails/health#show", as: :rails_health_check
  resources :kittens
  root "kittens#index"
end
