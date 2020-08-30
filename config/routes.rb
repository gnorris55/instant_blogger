Rails.application.routes.draw do
  get 'users/destroy'
  get 'blogs/home'
  resources :blogs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
