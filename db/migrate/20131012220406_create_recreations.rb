class CreateRecreations < ActiveRecord::Migration
  def change
    create_table :recreations do |t|
      t.string :name
      t.string :location
      t.string :address
      t.string :audience
      t.string :info
      t.string :days
      t.string :timeOfDay

      t.timestamps
    end
  end
end
