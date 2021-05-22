Rails.application.routes.draw do
  get 'remote_posts/index'
  resources :posts
  devise_for :users

  root to: 'posts#index'

  get 'users/:handle', to: 'users#show', as: :user, constraints: { :handle => %r{[^\/]+} }
  get 'posts/partners', to: 'remote_posts#index'


end
