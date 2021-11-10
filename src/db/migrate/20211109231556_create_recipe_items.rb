class CreateRecipeItems < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_items do |t|
      t.integer :quantity
      t.integer :food_id
      t.integer :recipe_id
      t.float :calories

      t.timestamps
    end
  end
end
