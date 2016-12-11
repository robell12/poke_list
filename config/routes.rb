Rails.application.routes.draw do
  devise_for :user

  root 'home#index'

  namespace :api do
    get 'collection', to: 'cards#collection'
    resources :cards
    post 'add_to_collection', to: 'cards#add_to_collection'
  end

  get '*unmmatched_route', to: 'home#index'
end
