Rails.application.routes.draw do
  root to: 'groups#index'
  resources :albums
  resources :genres
  resources :songs
  resources :groups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
