Rails.application.routes.draw do
  resources :tournaments
  resources :golfers
  resources :scores

  post 'scores/calculate'

  root 'scores#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
