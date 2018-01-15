Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #normal user
  # resources :restaurants, only: [:index, :show]
  root "restaurants#index"


  #admin
  namespace :admin do

    resources :restaurants
    root "restaurants#index"

  end
end
