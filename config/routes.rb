Rails.application.routes.draw do
  root 'pages#home'

  post 'create_post', to: 'pages#create_post'
  delete 'destroy_post/:id', to: 'pages#destroy_post', as: 'destroy_post'
end
