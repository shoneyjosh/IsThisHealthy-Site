#Josh Shoenfelt - Developer

#Creates a recipe item to add to the recipe
#Allows for recipe item to update within recipe
#Destroy will destroy the recipe item with the associated ID
class RecipeItemsController < ApplicationController
    skip_before_action :authenticate_user!
    def create
        @recipe = current_recipe
        @recipe_item = @recipe.recipe_items.new(recipe_params)
        @recipe.save
        session[:recipe_id] = @recipe.id
    end

    def update
        @recipe = current_recipe
        @recipe_item = @recipe.recipe_items.find(params[:id])
        @recipe_item.update_attributes(recipe_params)
        @recipe_items = current_recipe.recipe_items
    end

    def destroy
        @recipe = current_recipe
        @recipe_item = @recipe.recipe_items.find(params[:id])
        @recipe_item.destroy
        @recipe_items = current_recipe.recipe_items
    end

    private

    def recipe_params
        params.require(:recipe_item).permit(:food_id, :quantity)
    end
end
