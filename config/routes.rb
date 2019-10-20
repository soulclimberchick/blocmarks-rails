Rails.application.routes.draw do
  get 'likes/index'
  get 'welcome/index'
  get 'welcome/about'
  root to: 'welcome#index'

  resources :topics do
    resources :bookmarks, except: [:index]
    resources :bookmarks, except: [:index] do
      resources :likes, only: [:index, :create, :destroy]
    end
  end

  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
