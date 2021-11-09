class AddFactsToFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :foods, :fat, :float
    add_column :foods, :cholesterol, :float
    add_column :foods, :sodium, :float
    add_column :foods, :carbs, :float
    add_column :foods, :sugar, :float
    add_column :foods, :protein, :float
    add_column :foods, :url, :string
  end
end
