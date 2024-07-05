Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:create, :destroy]
  end

  resources :bookmarks, only: [:destroy] # Ajoute cette ligne pour les routes non imbriquées
  root to: 'lists#index'
end
