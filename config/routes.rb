Rails.application.routes.draw do
  devise_for :users
  # controllers: {
  #   sessions: 'users/sessions',
  #   registrations: 'users/registrations'
  # }
  # devise_scope :user do
  #   get 'users/new_special', to: 'users/registrations#new_special'
  #   post 'users/create_special', to: 'users/registrations#create_special'
  # end
  resources :posts
  root to:'posts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
