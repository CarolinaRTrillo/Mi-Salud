Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookings
  resources :reports
  resources :habits
  resources :exams
  resources :medical_centers
  resources :recipes
  resources :users
  get "nosotros", to: "pages#nosotros"
  get "contacto", to: "pages#contacto"
  get "home2", to: "pages#home2"
  get "mi_salud", to: "pages#mi_salud"
end
