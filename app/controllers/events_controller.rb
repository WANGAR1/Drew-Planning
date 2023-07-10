class EventsController < ApplicationController
    before_action :authenticate_user
    before_action :find_event, only: [:show, :update, :destroy]
  
    def index
      events = current_user.events
      render json: events, status: :ok
    end
  
    def show
      render json: @event, status: :ok
    end
  
    def create
      event = current_user.events.build(event_params)
      if event.save
        render json: event, status: :created
      else
        render json: { errors: event.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      if @event.update(event_params)
        render json: @event, status: :ok
      else
        render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @event.destroy
      head :no_content
    end
  
    private
  
    def authenticate_user(email, password)
        user = User.find_by(email: email)
      
        if user && user.authenticate(password)
          store_session(user.id) # Store only the user ID in the session
          return true
        end
      
        false
      end      
  
    def current_user
      @current_user ||= authenticate_user
    end
  
    def find_event
      @event = current_user.events.find_by(id: params[:id])
      render json: { error: 'Event not found' }, status: :not_found unless @event
    end
  
    def event_params
      params.require(:event).permit(:name, :date, :time, :location, :description)
    end
  end
  