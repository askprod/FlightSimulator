Rails.application.routes.draw do
  root 'flights#show'
  resources :flights
  resources :booking
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
