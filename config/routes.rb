Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
    resources :reviews, only: [:create, :destroy]
  end
  root to: 'lists#index'
end
