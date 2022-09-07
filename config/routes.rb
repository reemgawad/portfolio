Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get "about", to: "pages#about"
  # get "brunchtime", to: "pages#brunchtime"
  # get "ruby-games", to: "pages#ruby_games"
  get "contact", to: "pages#contact"
  resources :contacts, only: [:new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
