class KitchensController < ApplicationController

before_action :set_kitchens, only: [:edit, :update, :destroy]

   def index
		@kitchen = Kitchen.all
   end


	def new
		@kitchen = Kitchen.new
	end

	def create
		@kitchen = Kitchen.new(kitchen_params)
		
			if @kitchen.save
    			redirect_to kitchens_path,flash: { success: "You've added a new item to Kitchen Prep"} 
    		else
    			render :new
    		end
	end

	def edit
    end

    def update
        if @kitchen.update(kitchen_params)
        redirect_to kitchens_path
      else
        render 'edit'
      end
    end


	def destroy
		@kitchen.destroy
		redirect_to kitchens_path
	end

private
	
	def set_kitchens
        @kitchen = Kitchen.find(params[:id])
    end

	def kitchen_params
		params.require(:kitchen).permit(:description, :image)
	end

end

