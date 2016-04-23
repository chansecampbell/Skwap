class ConnectionsController < ApplicationController

 def new
     @skill = Skill.find(params[:skill_id])
     @connection = Connection.new
 end

 def create
     @skill = Skill.find(params[:skill_id])
     @connection = @skill.connections.new(connection_params)
     @connection.sender_id = current_user.id
     @connection.receiver_id = @skill.user.id
     
     if @connection.save
         flash[:success] = "Your enquiry was made successfully"
         redirect_to skills_path
     else
         flash[:danger] = "Your enquiry was not sent"
         redirect_to skills_path
     end
 end


 private
 def connection_params
     params.require(:connection).permit(:details, :meetup_time, :skill_id)
 end

end
