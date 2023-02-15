Rails.application.routes.draw do
  devise_for :users, controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations',
  }

  resources :groups, only: [:index, :create, :new] do
    resources :expenses, only: [:index, :create, :new] do
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :create, :destroy, :new]

  # Defines the root path route ("/")
  root "users#index"
end
