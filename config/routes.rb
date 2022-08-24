Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'pages#home'

  # # Read all
  # get 'members', to: 'members#index'
  # # Create
  # get 'members/new', to: 'members#new'
  # post 'members', to: 'members#create'
  # # Read one
  # get 'members/:id', to: 'members#show', as: :member
  # # Update
  # get 'members/:id/edit', to: 'members#edit'
  # patch 'members/:id', to: 'members#update'
  # # Delete
  # delete 'members/:id', to: 'members#destroy'

  # generate 7 routes above with just one line
  resources :members

  # GET url/about
  get 'about', to: 'pages#about'
  # GET url/contact
  get 'contact', to: 'pages#contact'
end
