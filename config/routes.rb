Rails.application.routes.draw do
  get 'remote_posts/index'
  resources :posts
  devise_for :users

  root to: 'posts#index'

  get 'users/:handle', to: 'users#show', as: :user, constraints: { :handle => %r{[^\/]+} }
  resources :users, param: :handle, constraints: { :handle => %r{[^\/]+} }, only:[:edit, :update,:index,:destroy]
  get 'sponsors/posts', to: 'remote_posts#index'


end
