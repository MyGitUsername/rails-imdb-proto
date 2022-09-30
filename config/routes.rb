Rails.application.routes.draw do
  resources :ratings
  resources :users
  resources :people
  resources :movies, only: [:index, :show] do
    resources :comments, only: [:new, :create, :index] 
  end
  resources :comments, only: [:show, :edit, :update, :destroy] 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "movies#index"
end
