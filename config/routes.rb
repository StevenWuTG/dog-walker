Rails.application.routes.draw do
  resources :dogs
  resources :signups
  resources :walkers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
