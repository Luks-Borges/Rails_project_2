Rails.application.routes.draw do
  resources :posts
  get 'about', to: 'pages#about'

  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"
end
