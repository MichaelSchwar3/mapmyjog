Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: 'static_pages#root'

  namespace :api, defaults: {format: 'json'} do
    resources :users, only: [:create, :show, :index] do
      resources :friends, only: [:create, :index, :update, :destroy]
    end
    resource :session, only: [:create, :destroy]
    resources :runs
    resources :workouts
    resources :comments, only: [:create, :destroy, :index]
  end
end
