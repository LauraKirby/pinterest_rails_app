class PinsController < ApplicationController
	
	def index
		@p = Pin.all
	end

	def new
		@p = Pin.new
	end

	def create
		@p = Pin.create pin_param
		redirect_to "/pins"
	end 

	def update
		@p = Pin.find_by_id(params[:id])
		@p.update(pin_params)
		redirect_to '/pins'
	end 

	def edit 
		@p = Pins.find_by_id(params[:id])
	end 

	def show
		@p = Pins.find_by_id(params[:id])
	end 

	def destroy
		@p = find_by_id(params[:id])
		@p.destory 
		redirect_to '/'
	end 



end

#when the user has the opportunity to story data to our server, let's make use the 
#user can only access a few things:

private 
	def pin_params 
		#QUESTION: what is :pin doing here? is it the instance being created or updated?
		params.require(:pin).permit(:url, :url_comment)
	end 