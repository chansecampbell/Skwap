class ConnectionsController < ApplicationController
    before_filter :authenticate_user!
    before_action :set_connection, only: [:accept, :reject, :cancel, :complete]

 def new
     @skill = Skill.find(params[:skill_id])
     @connection = Connection.new
 end

 def create
    if current_user.credits > 0
     @skill = Skill.find(params[:skill_id])
     @connection = @skill.connections.new(connection_params)
     @connection.sender_id = current_user.id
     @connection.receiver_id = @skill.user.id
     # @padawan = current_user.first_name
     # @master = @skill.user.first_name
     
     if @connection.save
         flash[:success] = "Your enquiry was made successfully"
         redirect_to skills_path
     else
         flash[:danger] = "Your enquiry was not sent"
         redirect_to skills_path
     end
 else
    flash[:danger] = "Sorry, you currently have no credits. Start sharing to earn more today!"
    redirect_to skills_path
end
 end

 def show
    @connection = Connection.find(params[:id])
    @skill = Skill.find(params[:skill_id])
    @comments = @connection.comments
    @user = User.all

    @private_users = [@connection.sender_id, @connection.receiver_id]

    if !@private_users.include? current_user.id
            redirect_to skills_path
            flash[:danger] = "You can't be on this page!"

    end

    # if current_user.id != @connection.sender_id
    #     redirect_to skills_path
    # end

 end

 def accept
    @sender = User.where(id: @connection.sender_id)
    if @sender.first.credits == 0
    flash[:danger] = "The user doesn't have enough credits left to currently do this!"
    redirect_to :back
    else
     @connection.accept!
     flash[:success] = "You accepted a connection!"
     @sender.first.decrement!(:credits)
     redirect_to new_skill_path(:anchor => "user-listings")
    end
 end

 def reject
     @connection.reject!
    flash[:danger] = "You declined a connection!"
    redirect_to :back
 end

 def cancel
     @connection.cancel!
     flash[:info] = "You cancelled a connection!"
     redirect_to :back
 end

 def complete
    @connection = Connection.find(params[:id])
     @connection.complete!
     flash[:info] = "You completed a connection!"
     # @user = User.where(id: @connection.receiver_id)
     current_user.increment!(:credits)
     redirect_to :back
 end


 private

 def set_connection
   @connection = Connection.find(params[:id])
 end

 def connection_params
     params.require(:connection).permit(:details, :meetup_time, :skill_id)
 end

end
