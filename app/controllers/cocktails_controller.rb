class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail =Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(strong_params)

    if @cocktail.save
      redirect_to cocktails_path, notice: "Cocktail has been added"
    else
      render :new
    end
  end

  def strong_params
    params.require(:cocktail).permit(:name)
  end
end
