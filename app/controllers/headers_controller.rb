class HeadersController < ApplicationController

def index
	@headers = Header.all
end

def new
	@header = Header.new
end

def create
	@header = Header.new(header_params)
		if @header.save
			flash[:success] = "Header was created successfully"
				redirect_to headers_path
		else
			render 'new'
		end
end

def edit

end

def update
	if @header.update(header_params)
        redirect_to root_path
    else
        render 'edit'
    end
end

def show

end

private

def header_params
	params.require(:header).permit(:name)
end

end

