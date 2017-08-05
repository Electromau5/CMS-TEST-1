class SocialsController < ApplicationController

before_action :set_socials, only: [:edit, :update, :destroy]

   def index
		@social = Social.all
   end


   def socialcms
		@social = Social.all
		# @socials = social.find(params[:id])
   end

	def new
		@social = Social.new
	end

	def create
		@social = Social.new(social_params)
		
			if @social.save
    			redirect_to socialcms_path,flash: { success: "You've added a new social media link"} 
    		else
    			render :new
    		end
	end

	def edit
    end

    def update
        if @social.update(social_params)
        redirect_to socialcms_path
      else
        render 'edit'
      end
    end


	def destroy
		@social.destroy
		redirect_to socialcms_path
	end

private
	
	def set_socials
        @social = Social.find(params[:id])
    end

	def social_params
		params.require(:social).permit(:name, :link, :image)
	end

end

