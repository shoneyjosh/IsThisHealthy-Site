class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.float :serving_size
      t.float :calories

      t.timestamps
    end
  end
end
