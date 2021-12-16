#Josh Shoenfelt - Developer

#Recipe Controller displays all of the recipe items in the recipe
#and checks if the different nutrition information totals make the recipe unhealthy
#If any of the info exceeds a certain amount, it is displayed on the webpage and is defined as "unhealthy"

require 'csv'
class RecipesController < ApplicationController
  skip_before_action :authenticate_user!

  def export
    @recipe_items = current_recipe.recipe_items

    respond_to do |format|
      format.csv do 
        response.headers['Content-Type'] = 'text/csv'
        response.headers['Content-Disposition'] = "attachment; filename = recipe.csv"
      end
    end
  end

  def show
    @recipe_items = current_recipe.recipe_items

    @current_recipe = current_recipe

    if(@current_recipe.calTotal > 700)
      flash[:notice] = 'Your recipe exceeds 700 calories, consider removing ingredients that may be high in calories.'
    else
      flash[:notice] = 'Your recipe is not excessive in calories.'
    end

    if(@current_recipe.fatTotal > 20)
      flash[:notice2] = 'Your recipe exceeds 30 grams of fat which is over 1/3 of your daily fat intake. Consider removing ingredients that may be high in fat.'
    else
      flash[:notice2] = 'Your recipe is not excessive in fat.'
    end

    if(@current_recipe.sodiumTotal > 780)
      flash[:notice3] = 'Your recipe exceeds 780 mg of sodium which is over 1/3 of your daily sodium intake. Consider removing ingredients that may be high in sodium.'
    else
      flash[:notice3] = 'Your recipe is not excessive in sodium.'
    end

    if(@current_recipe.carbsTotal > 95)
      flash[:notice4] = 'Your recipe exceeds 95 grams of carbohydrates which is over 1/3 of your daily carb intake. Consider removing ingredients that may be high in carbs.'
    else
      flash[:notice4] = 'Your recipe is not excessive in carbs.'
    end

    if(@current_recipe.sugarTotal > 20)
      flash[:notice5] = 'Your recipe exceeds 20 grams of sugar which is over 1/3 of your daily sugar intake. Consider removing ingredients that may be high in sugar.'
    else
      flash[:notic5] = 'Your recipe is not excessive in sugar'
    end

    if(@current_recipe.proteinTotal > 20)
      flash[:notice6] = 'Your recipe exceeds 20 grams of protein which is over 1/3 of your daily protein intake. Consider removing ingredients that may be high in protein.'
    else
      flash[:notice6] = 'Your recipe is not excessive in protein.'
    end

    if(@current_recipe.cholTotal > 100)
      flash[:notice7] = 'Your recipe exceeds 100 mg of sugar which is over 1/3 of your daily cholesterol intake. Consider removing ingredients that may be high in cholesterol.'
    else
      flash[:notice7] = 'Your recipe is not excessive in cholesterol'
    end
  end
end
