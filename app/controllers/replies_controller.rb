class RepliesController < ApplicationController
  def create
    @reply = Reply.new(reply_params)
    @reply.save
    
    redirect_to '/'
  end
  
  def destroy
  end
  
  private
  def reply_params
      params.require(:reply).permit(:content)
  end
end
