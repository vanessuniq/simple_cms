Rails.application.routes.draw do
  root 'demo#index'
  get 'demo/index'
  get 'demo/hello'
  get 'demo/about'
  get 'demo/contact'

  resources :pages
  resources :subjects
  # get 'pages/new'
  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/edit'

  # get 'subjects/new'
  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
