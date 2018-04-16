Rails.application.routes.draw do
  get 'session/new'

  post 'session/create'

  get 'session/destroy'

  resources :users
  #resources :session, only: [:new, :create, :destroy]

  #match '/signup', to: 'users#new', via: 'get'

  #match '/signin', to: 'session#new', via: 'get'

  #match '/signout', to: 'session#destroy', via: 'delete'


  #post 'session/create'
  get 'users/new'

  root to: 'lr8#input'

  get 'lr8/input'

  get 'lr8/output'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
