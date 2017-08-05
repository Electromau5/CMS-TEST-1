class GroupsController < ApplicationController

before_action :set_groups, only: [:edit, :update, :destroy]

   def index
		@group = Group.all
   end


   def index1
		@group = Group.all
		# @groups = Group.find(params[:id])
   end

	def new
		@group = Group.new
	end

	def create
		@group = Group.new(group_params)
		
			if @group.save
    			redirect_to groupscms_path,flash: { success: "You've added a new Food Group"} 
    		else
    			render :new
    		end
	end

	def edit
    end

    def update
        if @group.update(group_params)
        redirect_to cms_path
      else
        render 'edit'
      end
    end


	def destroy
		@group.destroy
		redirect_to groups_path
	end

private
	
	def set_groups
        @group = Group.find(params[:id])
    end

	def group_params
		params.require(:group).permit(:title, :description, :image)
	end

end

