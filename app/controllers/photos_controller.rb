class PhotosController < ApplicationController

before_action :set_photos, only: [:edit, :update, :destroy]

   def index
		@photo = Photo.all
   end


   def photocms
		@photo = Photo.all
		# @photos = photo.find(params[:id])
   end

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(photo_params)
		
			if @photo.save
    			redirect_to photocms_path,flash: { success: "You've added a new image to gallery"} 
    		else
    			render :new
    		end
	end

	def edit
    end

    def update
        if @photo.update(photo_params)
        redirect_to photocms_path
      else
        render 'edit'
      end
    end


	def destroy
		@photo.destroy
		redirect_to photocms_path
	end

private
	
	def set_photos
        @photo = Photo.find(params[:id])
    end

	def photo_params
		params.require(:photo).permit(:name, :image)
	end

end

