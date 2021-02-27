class StaffsController < ApplicationController

    ##show all staff members 
    def index 
       @staffs = Staff.all
        render json: :@staffs
    end 

##show one Staff at a time 
    def show 
        @staff = Staff.find(staff[:id])
    end 

## create a new Staff 
    def create 
        @staff = Staff.new(staff_params)
        if @staff.valid?
            @staff.save
            render json: :@staff
        else 
            render json: :@staff.errors.full_messages
    end 

## update an existing Staff 
    def update 
        @staff = Staff.new(staff_params)
        @staff.assign_attributes(staff_params)
        if @staff.valid?
            @staff.save 
            render json: :@staff
        else 
            reder json: :@staff.errors.full_messages
        end 

    end 

## delete an existing staff

    def destroy
        @staff = Staff.find(staff[:id])
        @staff.destroy
    end 

    private

    def staff_params
        params.require(:staff).permit(:name, :image, :description )
    end 
end
