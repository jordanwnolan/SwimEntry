Rails.application.routes.draw do
  devise_for :coaches

  root 'coaches#index'
  resources :meets, only: [:show, :update]
end
