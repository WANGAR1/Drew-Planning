Rails.application.routes.draw do
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/api/events', to: 'events#index'
  get '/api/events/:id', to: 'events#show'
  post '/api/events', to: 'events#create'
  put '/api/events/:id', to: 'events#update'
  delete '/api/events/:id', to: 'events#destroy'

  # Get event guests
get '/api/events/:event_id/guests', to: 'guests#index', as: 'event_guests'

# Update guest RSVP
put '/api/guests/:id', to: 'guests#update', as: 'update_guest_rsvp'

# Add guest
post '/api/events/:event_id/guests', to: 'guests#create', as: 'add_guest'

end

