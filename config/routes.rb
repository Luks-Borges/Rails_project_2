Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/u/:id', to: 'users#profile', as: 'user'
  resources :posts
  get 'about', to: 'pages#about'

  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"
end
