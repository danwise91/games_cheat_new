class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @games = Game.new
  end

  def create
    @game = Game.new(game_params)
    respond_to do |format|
      if @game.save
        format.html{redirect_to '/games', notice: "Game added"}
      else
        format.html{render :new}
      end
    end
  end


  def edit
    @game = Game.find(params[:id])
  end

 def update
  respond_to do |format|
  @game = Game.find(params[:id])
   if @game.update(game_params)
    format.html { redirect_to @game, notice: 'This cheat code has been updated'}
    else
     format.html { render :edit}
      end
    end
  end

  def destroy
    respond_to do |format|
    @game = Game.find(params[:id])
    @game.destroy
      format.html {redirect_to '/games', notice: 'This cheat has been deleted'}
    end
  end

  private
  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :console)
  end
end
