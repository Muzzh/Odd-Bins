class WinesController < ApplicationController
  def show
    @wine = Wine.find(params[:id])
  end

  def new
    @wine = Wine.new
  end

  def create
    wine = Wine.create(wine_params)
    redirect_to wine_path(wine.id)
  end


  private

  def wine_params
    params.require(:wine).permit(:name, :producer, :year, :grapes, :description)
  end
end
