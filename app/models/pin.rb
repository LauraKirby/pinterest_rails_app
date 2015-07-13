class Pin < ActiveRecord::Base

	validates :url, :url_comment, presence: true
	
end


#check for any errors 
#first_pin.save
#will return true or false 

#first_pin.errors.any?
#if "true" is returned loop over array of messages
#full_messages is an array of error messages
#first_pin.errors.full_messages
#first_pin.errors.full_messages do |error|
#p error 
#end 


#rails
#rails g controller pins index show new edit

#Bash shortcut 
#touch {index,edit,new,show}.html.erb

