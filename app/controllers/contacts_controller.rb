class ContactsController < ApplicationController

before_action :set_contacts, only: [:edit, :update, :destroy]

   def index
		@contact = Contact.all
   end

    def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		
			if @contact.save
    			redirect_to contacts_path,flash: { success: "You've added a new Food contact"} 
    		else
    			render :new
    		end
	end

	def edit
    end

    def update
        if @contact.update(contact_params)
        redirect_to contacts_path
      else
        render 'edit'
      end
    end


	def destroy
		@contact.destroy
		redirect_to contacts_path
	end

private
	
	def set_contacts
        @contact = Contact.find(params[:id])
    end

	def contact_params
		params.require(:contact).permit(:address, :time, :day, :time2, :day2, :phone)
	end

end

