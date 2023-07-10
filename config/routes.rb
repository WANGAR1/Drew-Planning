Rails.application.routes.draw do
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/api/events', to: 'events#index'
  get '/api/events/:id', to: 'events#show'
  post '/api/events', to: 'events#create'
  put '/api/events/:id', to: 'events#update'
  delete '/api/events/:id', to: 'events#destroy'
end

