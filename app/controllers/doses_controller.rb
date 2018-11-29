class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    raise
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(params[:dose][:ingredient])
    @doses = Dose.new(review_params)
    @doses.cocktail = @cocktail
    @doses.ingredient = @ingredient
    if @doses.save
      redirect_to cocktail_dose(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def review_params
    params.require(:dose).permit(:description)
  end
end
