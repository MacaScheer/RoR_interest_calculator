Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "static_pages#root"
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create] 
      resources :accounts, only: [:create, :show, :update] do
      resources :investments, only: [:create, :index, :show, :destroy]
      end
      resource :session, only: [:create, :destroy]
    end
    end
