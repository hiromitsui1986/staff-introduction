Rails.application.routes.draw do
  devise_for :users
  root "members#index"

  resources :members, only: [:index, :new, :create, :edit, :destroy]
  
end
