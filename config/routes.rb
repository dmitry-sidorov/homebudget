Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  payment_list = "payment#index"

  # Defines the root path route ("/")
  root payment_list

  resources :payment


  # get :payments, to: payment_list
  get :users, to: "user#index"
  get :categories, to: "category#index"
end
