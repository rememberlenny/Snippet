class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :dishType
      t.string :dish
      t.string :ingredientsSimplified
      t.string :ingredients
      t.string :nutrition
      t.string :directions
      t.string :serves

      t.timestamps
    end
  end
end
