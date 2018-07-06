Rails.application.routes.draw do
  devise_for :users
  root 'authors#index'
  get 'authors/new', to: "authors#new", as: "new_author"
  get 'authors/index'
  get 'authors/:id', to: "authors#show", as: 'show_authors'
  delete 'authors/:id', to: "authors#delete", as: 'delete_author'
  post 'authors', to: "authors#create", as: 'authors'
  get 'authors/:id/edit', to: "authors#edit", as: 'edit_authors'
  patch 'authors/:id', to: 'authors#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors do
    resources :orders
  end


end
