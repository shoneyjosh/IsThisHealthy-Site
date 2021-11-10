class AddFactsToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :fatTotal, :float
    add_column :recipes, :cholTotal, :float
    add_column :recipes, :sodiumTotal, :float
    add_column :recipes, :carbsTotal, :float
    add_column :recipes, :sugarTotal, :float
    add_column :recipes, :proteinTotal, :float
  end
end
