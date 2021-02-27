class VisitorsController < ApplicationController

    def index 
        @visitors = Visitor.all 
        render json: @visitors
    end 


end
