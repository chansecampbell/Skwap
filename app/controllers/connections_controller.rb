class ConnectionsController < ApplicationController
    before_action :set_connection, only: [:accept, :reject, :cancel]

 def new
     @skill = Skill.find(params[:skill_id])
     @connection = Connection.new
 end

 def create
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
 end

 def show
    @connection = Connection.find(params[:id])
    @skill = Skill.find(params[:skill_id])
    @comments = @connection.comments
    @user = User.all

    # if current_user.id != @connection.sender_id
    #     redirect_to skills_path
    # end

 end

 def accept
     @connection.accept!
     flash[:success] = "You accepted a connection!"
     redirect_to :back
 end

 def reject
     @connection.reject!
    flash[:danger] = "You rejected a connection!"
    redirect_to :back
 end

 def cancel
     @connection.cancel!
     flash[:info] = "You cancelled a connection!"
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
