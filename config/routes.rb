Rails.application.routes.draw do
  devise_for :user

  root 'home#index'

  namespace :api do
    get 'cards', to: 'cards#index'
    get 'collection', to: 'cards#collection'
  end

  get '*unmmatched_route', to: 'home#index'
end
