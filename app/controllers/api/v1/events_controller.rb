class Api::V1::EventsController < ApplicationController
##show all events 
    def index 
        @events = Event.all
        render json: :@events
    end 

##show one event at a time 
    def show 
        @event = Event.find(params[:id])
    end 

## create a new event 
    def create 
        @event = Event.new(event_params)
        if @event.valid?
            @event.save
            render json: :@event
        else 
            render json: :@event.errors.full_messages
        end 
    end 

## update an existing event 
    def update 
        @event = Event.new(event_params)
        @event.assign_attributes(event_params)
        if @event.valid?
            @event.save 
            render json: @event 
        else 
            reder json: @event.errors.full_messages
        end 

    end 

## delete an existing event 

    def destroy
        @event = Event.find(params[:id])
        @event.destroy
    end 

    private

    def event_params
        params.require(:event).permit(:title, :date, :location, :description )
    end 


end
