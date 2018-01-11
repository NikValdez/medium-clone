Rails.application.routes.draw do
  devise_for :users
root "homes#show"
resources :users, only: [:show, :edit, :update]
resources :posts, only: [:new, :create]
end
