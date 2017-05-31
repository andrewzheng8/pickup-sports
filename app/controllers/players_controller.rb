class PlayersController < ApplicationController
  def index
    if params[:players]
      @players = Player.where("LOWER(email) LIKE ?", "%#{params[:players].downcase}%")
    else
      @players = Player.all
    end
  end

  def new
    @player = Player.new
  end

  def create
    if Player.find_by(email: params[:player][:email])
      flash[:danger] = "This email address already exists"
      redirect_to new_player_path
    else
    @player = Player.new(player_params)
      if @player.save
        session[:player_id] = @player.id
        flash[:success] = "You have successfully signed up!"
        redirect_to games_path
      else
        flash[:error] = "Sign Up Error"
      end
    end
  end


  def show
    @player = Player.find(params[:id])
    @post = Post.new
    @user_friend =UserFriend.new
  end

  # def edit
  #   @player = Player.find(params[:id])
  # end
  #
  # def update
  #   @player = Player.find(params[:id])
  # end

  private

  def player_params
    params.require(:player).permit(:name, :birthday, :location, :phone_number, :email, :password)
  end


end
