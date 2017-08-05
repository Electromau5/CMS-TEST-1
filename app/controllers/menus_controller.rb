class MenusController < ApplicationController

before_action :set_menus, only: [:edit, :update, :destroy]

   def index
		@menu = Menu.all
   end


   def menucms
		@menu = Menu.all
		# @menus = menu.find(params[:id])
   end

	def new
		@menu = Menu.new
	end

	def create
		@menu = Menu.new(menu_params)
		
			if @menu.save
    			redirect_to menucms_path,flash: { success: "You've added a new menu item"} 
    		else
    			render :new
    		end
	end

	def edit
    end

    def update
        if @menu.update(menu_params)
        redirect_to menucms_path
      else
        render 'edit'
      end
    end


	def destroy
		@menu.destroy
		redirect_to menucms_path
	end

private
	
	def set_menus
        @menu = Menu.find(params[:id])
    end

	def menu_params
		params.require(:menu).permit(:name, :description, :section, :image)
	end

end

