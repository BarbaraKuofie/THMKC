class Api::V1::VisitorsController < ApplicationController

    def index 
        visitors = Visitor.all 
        render json: visitors
    end 

    def create 
        visitor = Visitor.new(visitor_params)
        if visitor.valid?
            visitor.save
            render json: visitor 
        else render json: visitor.error.full_messages

        end 

    end 


    private

    def visitor_params
        params.require(:visitor).permit(:name, :comment)
    end 
end
