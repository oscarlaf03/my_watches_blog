Rails.application.routes.draw do
  resources :posts
  devise_for :users

  root to: 'posts#index'

  get 'users/:handle', to: 'users#show', as: :user, constraints: { :handle => %r{[^\/]+} }


end
