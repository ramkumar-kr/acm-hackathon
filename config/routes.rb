Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events 
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#login'
end
