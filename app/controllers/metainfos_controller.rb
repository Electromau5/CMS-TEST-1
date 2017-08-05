class MetainfosController < ApplicationController

before_action :set_metainfos, only: [:edit, :update, :destroy]

   def index
		@metainfo = Metainfo.all
   end


   def metainfos
		@metainfo = Metainfo.all
		# @metainfos = metainfo.find(params[:id])
   end

	def new
		@metainfo = Metainfo.new
	end

	def create
		@metainfo = Metainfo.new(metainfo_params)
		
			if @metainfo.save
    			redirect_to metainfos_path,flash: { success: "You've added a new metainfo media link"} 
    		else
    			render :new
    		end
	end

	def edit
    end

    def update
        if @metainfo.update(metainfo_params)
        redirect_to metainfos_path
      else
        render 'edit'
      end
    end


	def destroy
		@metainfo.destroy
		redirect_to metainfos_path
	end

private
	
	def set_metainfos
        @metainfo = Metainfo.find(params[:id])
    end

	def metainfo_params
		params.require(:metainfo).permit(:title, :description, :keyword)
	end

end

