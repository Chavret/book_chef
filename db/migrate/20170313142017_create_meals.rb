class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.integer :price
      t.string :food_type

      t.timestamps
    end
  end
end
