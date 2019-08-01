class GamesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end


  def create
    @game = current_user.games.create(game_params)

    if @game.valid?
      redirect_to games_path
    else
      render :new, status: :unprocessable_entity
    end

  end


  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end


  def update
    @game = Game.find(params[:id])
    if @game.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end

    @game.update_attributes(game_params)

    if @game.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:title, :black_player_id, :white_player_id, :losing_player_id, :turn_player_id)
  end

end
