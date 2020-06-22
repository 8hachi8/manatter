Rails.application.routes.draw do
  root "reports#index"
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :groups, only: [:index, :new, :create,:edit, :update] do
    resources :messages, only: [:index, :create]
  end
end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
