Rails.application.routes.draw do
  devise_for :testusers
  
  root 'home#index'

  resources :events, :reservations
  
  get '/events/:id', to: 'events_controller#show'

  get '/my_events', to: 'home#my_events'
  # omniauth
  match '/auth/:provider/callback', :to => 'user_sessions#create', :via => [:get]
  match '/auth/failure', :to => 'user_sessions#failure', :via => [:get]

  # Custom logout
  match '/logout', :to => 'user_sessions#destroy', :via => [:get]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
