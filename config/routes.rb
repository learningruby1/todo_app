Rails.application.routes.draw do
  resources :formularios
  resources :articles


  root 'pages#home'

  resources :todos
  resources :templates

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
