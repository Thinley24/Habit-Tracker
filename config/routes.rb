Rails.application.routes.draw do
  get 'habits/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :habits, only: [:show] do
    member do
      post :plus
      post :minus
    end
  end
end
