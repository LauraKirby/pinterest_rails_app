#pin is a resource, it is a noun that all of our data operates on
#you only neeed an instance var if you are sending info to a view
class PinsController < ApplicationController
	
	def index
		@pins = Pin.all
	end

	def new
		@pin = Pin.new
	end

	def create
		@pin = Pin.new pin_params
		@pin.save
		if @pin.save
			flash[:success] = "Successfully created a pin"
			redirect_to pins_path
		else 
			render :new
		end 
	end 

	def show
		@pin = Pin.find_by_id(params[:id])
	end 

	def update
		@pin = Pin.find_by_id(params[:id])
		@pin.update pin_params 
		@pin.save 
		if @pin.save
			redirect_to pin_path(@pin) #get used to no parenthesis - rails code doesn't use them
		else 
			render :edit 
		end 
	end 

	def edit 
		@pin = Pin.find_by_id(params[:id])
		render :edit 
	end 

	def destroy
		@pin = Pin.find_by_id(params[:id])
		@pin.destroy 
		#two options when adding flash 1) define a hash, 2) define a hash as an argument 
		flash[:success] = "Successfully deleted" #define it 
		# redirect_to pins_path, flash: {success: "Successfully deleted"} # add it to an argument in your redirect 
		redirect_to pins_path
	end 

#white list paramaters 
# when the user has the opportunity to story data to our server, make sure the 
# user can only access a few things:

private 
	def pin_params 
		#QUESTION: what is :pin doing here? is it the instance being created or updated?
		#authentication through the pin due to the form_for?
		params.require(:pin).permit(:url, :url_comment)
	end 


end

