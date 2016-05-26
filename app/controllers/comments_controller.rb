class CommentsController < ApplicationController


  def create
	@message = Message.find(params[:message_id])
	@comment = @message.comments.create(params.require(:comment).permit(:content))
	@comment.user_id = current_user.id

	if @comment.save
		redirect_to message_path(@message)
	else
		render 'new'
	end 
end	

	def edit 
		@message = Message.find(params[:message_id])
		@comment = @message.comments.find(params[:id])
	end

	def update
		@message = Message.find(params[:message_id])
		@comment = @message.comments.find(params[:id])
		if @comment.update(params.require(:comment).permit(:content))
			redirect_to message_path(@message)
		else
			render 'edit'
	end
	end

end
