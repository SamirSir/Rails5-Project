class WelcomeController < ApplicationController
  def index
  	if(params.has_key?(:id) &&
  		params.has_key?(:random)) 
  		@id = params['id']
  		@random = params['random']
  	end  
  end


  def sample

  	if (params.has_key?(:number) && params.has_key?(:message))
  		@number = params['number']
  		@message = params['message']
  	end

  	@controller_message = "Hello from controller! "
  	@message2 = "Second message from controller"
  end 
end
