Rails.application.routes.draw do
  root "homes#index"
  resources :bookings
  resources :buses
  devise_for :users
  get 'homes-about', to: "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
