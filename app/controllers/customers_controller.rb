class CustomersController < ApplicationController

before_action :set_customers, only: [:edit, :update, :destroy]

   def index
		@customer = Customer.all
   end


   def customers
		@customer = Customer.all
		# @customers = customer.find(params[:id])
   end

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.new(customer_params)
		
			if @customer.save
    			redirect_to root_path,flash: { success: "You've added a new customer media link"} 
    		else
    			render :new
    		end
	end

	def edit
    end

    def update
        if @customer.update(customer_params)
        redirect_to customers_path
      else
        render 'edit'
      end
    end


	def destroy
		@customer.destroy
		redirect_to customers_path
	end

private
	
	def set_customers
        @customer = Customer.find(params[:id])
    end

	def customer_params
		params.require(:customer).permit(:name, :email, :phone, :eventdate, :message)
	end

end

