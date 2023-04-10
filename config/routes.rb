Rails.application.routes.draw do
  # all of my routes used listed below 
  resources :reminders
  get 'home/home'
  devise_for :users
  resources :categories
  resources :entries
  get 'categories', to: "categories#index"
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#home"
end
