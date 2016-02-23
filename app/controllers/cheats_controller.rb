class CheatsController < ApplicationController
  def index
    @cheats = Cheat.all
  end

  def show
    @cheat = Cheat.find(params[:id])
  end

  def new
    @cheats = Cheat.new
  end

  def create
    @cheat = Cheat.new(cheat_params)
    respond_to do |format|
      if @cheat.save
        format.html{redirect_to @cheat, notice: "Cheat code added"}
      else
        format.html{render :new}
      end
    end
  end

  def edit
    @cheat = Cheat.find(params[:id])
  end

  def update
    respond_to do |format|
      @cheat = Cheat.find(params[:id])
      if @cheat.update(cheat_params)
        format.html { redirect_to @cheat, notice: 'This cheat code has been updated'}
      else
        format.html { render :edit}
      end
    end
  end

  def destroy
    respond_to do |format|
      @cheat = Cheat.find(params[:id])
      @cheat.destroy
      format.html {redirect_to '/cheats', notice: 'This cheat has been deleted'}
    end
  end

  private
  def set_cheat
    @cheat = Cheat.find(params[:id])
  end

  def cheat_params
    params.require(:cheat).permit(:title, :content)
  end


end
