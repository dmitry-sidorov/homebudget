Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "payment#index"

  resources :payment, :except => [:new, :edit]
  resources :user, :except => [:new, :edit]
  resources :category, :except => [:new, :edit]

  get "generate_payment", to: "payment#generate_payment"
end
