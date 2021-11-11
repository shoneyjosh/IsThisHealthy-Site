class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.float :calTotal

      t.timestamps
    end
  end
end
