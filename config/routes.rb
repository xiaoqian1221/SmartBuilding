Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :users
  resources :vehicles
  root "vehicles#index"
end
