Rails.application.routes.draw do
  get 'comments/new'

  get 'home' => 'pages#home'

  get 'new' => 'pages#new'

  # get 'blogs#new'
  #
  # get 'blogs#home'
  #
  # post 'blogs#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root    'pages#home'

  resources :pages do
    get 'like_count'
    get 'like_count_p'
  end
  resources :comments
end
