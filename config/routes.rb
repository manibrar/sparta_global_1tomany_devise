Rails.application.routes.draw do
  root 'users#index'
  get 'users/new'
  get 'users/index'
  get 'users/:id', to:"users#show", as: "show_users"
  get 'users/:id/edit', to:"users#edit", as: 'edit_users'
  post 'users/:id/edit', to: 'users#update'
  get 'posts/new'
  get 'posts/index'
  get 'posts/show'
  get 'posts/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
