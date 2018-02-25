Rails.application.routes.draw do
  get 'templates/index'

  get 'templates/new'

  get 'templates/create'

  get 'templates/show'

  get 'todos/new'

  root 'pages#home'

  get 'pages/about'
  resources :todos
  resources :templates

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
