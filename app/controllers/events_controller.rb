class EventsController < ApplicationController
    
    def index
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
        @foods = Food.where(event: @event)
    end

    def create
      location = Location.new(lat: event_params["lat"], lon: event_params["lon"])
      location.save!
      event = Event.new(name: event_params["name"], organizer_id: event_params["organizer"], food_attributes: { estimated_qty: event_params["estimated_qty"], photos: event_params["photos"] }, location: location)
      
      event.save!
    end

    def new
        @event = Event.new
    end

    private

    def event_params
        puts "#{params}"
        params.permit(:name, :organizer, :lat, :lon, :estimated_qty, photos: [])
    end
end
