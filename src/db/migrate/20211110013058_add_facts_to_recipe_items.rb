class AddFactsToRecipeItems < ActiveRecord::Migration[6.0]
  def change
    add_column :recipe_items, :fat, :float
    add_column :recipe_items, :cholesterol, :float
    add_column :recipe_items, :sodium, :float
    add_column :recipe_items, :carbs, :float
    add_column :recipe_items, :sugar, :float
    add_column :recipe_items, :protein, :float
    add_column :recipe_items, :url, :float
  end
end
