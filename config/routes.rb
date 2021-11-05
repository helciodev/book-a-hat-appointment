Rails.application.routes.draw do
  get 'hats/index'
  get 'hat/index'
  namespace :api do
    namespace :v1 do
      resources :appointments
    end
  end
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  get 'hats', to: 'hats#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
