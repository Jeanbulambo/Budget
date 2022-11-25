Rails.application.routes.draw do
  devise_for :users
  resources :groups, only: [:index, :new, :create] do
    resources :entities, only: [:index, :new, :create]
  end
  root to: 'group#index'
end