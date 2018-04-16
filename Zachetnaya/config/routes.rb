Rails.application.routes.draw do

  get 'session_controller/login'

  post 'session_controller/create'

  get 'session_controller/logout'

  resources :users

  resources :articles do
    resources :comments
  end

 # get '/edit', to: 'users#edit', as: :edit
  root to:  'articles#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
