Rails.application.routes.draw do
  resources :employees
  resources :products
  resources :vendors
  resources :companies
  devise_for :users, controllers: { registrations: 'registrations' }
  as :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
