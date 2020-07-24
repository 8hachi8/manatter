Rails.application.routes.draw do
  root "reports#index"
  devise_for :users
  resources :reports do
    collection do
      get 'search'
    end
    resources :comments, only: :create
  end
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:index, :new, :create,:edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
