class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :name
      t.string :location
      t.string :address
      t.string :item
      t.string :when

      t.timestamps
    end
  end
end
