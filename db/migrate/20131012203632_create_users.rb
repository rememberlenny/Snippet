class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :phoneNumber
      t.string :subscribeGroup

      t.timestamps
    end
  end
end
