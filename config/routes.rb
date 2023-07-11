Rails.application.routes.draw do
  resources :prototypes
  devise_for :users
  root to:"prototypes#index"
  resources :users, only: :show
  resources :prototypes do
    resources :comments, only: :create
  end
end
