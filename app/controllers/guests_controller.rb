class GuestsController < ApplicationController
    def index
      event = Event.find(params[:event_id])
      guests = event.guests
      render json: guests
    end
    
    def update
      guest = Guest.find(params[:id])
      guest.update(guest_params)
      render json: guest
    end
    
    def create
      event = Event.find(params[:event_id])
      guest = event.guests.build(guest_params)
      if guest.save
        render json: guest, status: :created
      else
        render json: guest.errors, status: :unprocessable_entity
      end
    end
    
    private
    
    def guest_params
      params.require(:guest).permit(:name, :email, :rsvp_status)
    end
  end
  