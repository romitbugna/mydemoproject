require 'sidekiq/web'
require 'sidekiq/cron/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  root "homes#index"
  resources :bookings
  resources :buses
  devise_for :users
  get 'homes-about', to: "homes#about", as: "about"
  get 'search', to: "buses#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
