Rails.application.routes.draw do
  get 'users/index' => 'users#index'
  get 'signup' => 'users#new'
  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'
  post 'users/create' => 'users#create'

  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/create' => 'posts#create'
  post 'posts/:id/destroy' => 'posts#destroy'

  get '/' => 'home#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
