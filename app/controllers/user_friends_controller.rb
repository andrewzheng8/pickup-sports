class UserFriendsController < ActionController::Base

  def create
    @user2friend = UserFriend.new(uf_params)
    @friend2user = UserFriend.new(player_id: uf_params[:friend], friend: uf_params[:player_id])
    if @user2friend.save && @friend2user.save
      redirect_to games_path
    else
      redirect_to players_path
    end
  end

  private

  def uf_params
    params.require(:user_friend).permit(:player_id, :friend)
  end

end
