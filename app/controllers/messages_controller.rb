class MessagesController < ApplicationController

	before_action :authenticate_user!
	
	
	def index
		@messages = Message.all.order("created_at DESC")
	end

	def show

		@message = Message.find(params[:id])
	end

	def new
		@message = current_user.messages.build
		
	end

	def create


		@message = current_user.messages.build(message_params)
		if @message.save
	
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		
		@message = Message.find params[:id]
	end

	def update

		@message = Message.find params[:id]
		if @message.update(message_params)
			redirect_to message_path
		else
			render 'edit'
		end
	end

	def destroy
		@message = Message.find params[:id]
		@message.destroy
		redirect_to root_path
	end


	private 
	def message_params
		params.require(:message).permit(:title, :description, :job, :status, :customer,image: [:file_name, :image_file_size, :image_content_type, :image_updated_at])
	end

	def service_params
		 params.require(:service).permit(:photo)
		end


end
