Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch '/capture', to: 'pokemon#capture', as: 'capture'
  patch '/damage', to: 'pokemon#damage', as: 'damage'
  post '/pokemon', to: 'pokemon#create'
  get '/pokemon/new', to: 'pokemon#new', as: 'new_pokemon'
end
