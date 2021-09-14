Rails.application.routes.draw do
  # root routes
  root "accounts#index"
  devise_for :users # from devise for user routes

  # not connect to the user and continue with 
  # parent and child route pattern from here
  resources :accounts do
    resources :items
  end
end
