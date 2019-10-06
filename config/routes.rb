Rails.application.routes.draw do

  resources :topics do
  resources :bookmarks
end

  get 'topics/index'
  get 'topics/show'
  get 'topics/new'
  get 'topics/edit'

  devise_for :users
  resources :users, only: [:show]
  
  get 'welcome/index'
  get 'welcome/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
end
