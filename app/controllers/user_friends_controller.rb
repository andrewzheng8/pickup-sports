class UserFriendsController < ActionController::Base

  def create
    @user2friend = UserFriend.new(uf_params)
    @friend2user = UserFriend.new(player_id: uf_params[:friend], friend: uf_params[:player_id])
    if @user2friend.save && @friend2user.save
      redirect_to player_path(Player.find(uf_params[:friend]))
    else
      flash[:danger] = "Error adding friend"
      redirect_to player_path(Player.find(uf_params[:friend]))
    end
  end

  private

  def uf_params
    params.require(:user_friend).permit(:player_id, :friend)
  end

end
