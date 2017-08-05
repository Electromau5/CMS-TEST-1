class HomesController < ApplicationController

before_action :set_homes, only: [:edit, :update, :destroy]

   def index
		@home = Home.all
   end

    def new
		@home = Home.new
	end

	def create
		@home = Home.new(home_params)
		
			if @home.save
    			redirect_to homes_path,flash: { success: "You've added a new set of images to the homepage"} 
    		else
    			render :new
    		end
	end

	def edit
    end

    def update
        if @home.update(home_params)
        redirect_to homes_path
      else
        render 'edit'
      end
    end


	def destroy
		@home.destroy
		redirect_to homes_path
	end

private
	
	def set_homes
        @home = Home.find(params[:id])
    end

	def home_params
		params.require(:home).permit(:banner1, :banner2)
	end

end

