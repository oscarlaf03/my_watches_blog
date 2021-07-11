Rails.application.routes.draw do
  get 'remote_posts/index'
  resources :posts
  devise_for :users

  root to: 'posts#index'

  resources :users, param: :handle, constraints: { :handle => %r{[^\/]+} }, except: [:create, :new]
  get 'sponsors/posts', to: 'remote_posts#index'
  get 'new_page', to: 'pages#new_page'

end
