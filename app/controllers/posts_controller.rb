class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    if @post.save && post_params[:game_id] == nil
      redirect_to player_path(Player.find(post_params[:player_id]))
    elsif @post.save && post_params[:game_id] != nil
      redirect_to game_path(Game.find(post_params[:game_id].to_i))
    else
      flash[:danger] = "Error posting"
      redirect_to games_path
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :player_id, :game_id, :poster_id)
  end
end
