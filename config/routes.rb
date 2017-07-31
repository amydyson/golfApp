Rails.application.routes.draw do
  resources :tournaments
  resources :golfers
  resources :scores

  post 'scores/calculate'


  post 'tournaments/calculate'

  post 'tournaments/setup_to_score'

  root 'scores#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
