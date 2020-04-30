class WelcomeController < ApplicationController
  def index
  	if (params.has_key?(:id) && params.has_key?(:message))
  		@id = params[:id]
  		@message = params[:message]
  	end	
  end

  def newview
  	@controller_message = "Hello form controller"

  	if (params.has_key?('name') && params.has_key?('address'))
  		@name =params['name']
  		@address = params['address']
  	end

  end 
end
