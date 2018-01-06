Rails.application.routes.draw do
  devise_for :users
root "homes#show"
resources :posts, only: [:new, :create]
end
