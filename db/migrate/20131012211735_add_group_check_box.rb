class AddGroupCheckBox < ActiveRecord::Migration
  def change
    remove_column :users, :subscribeGroup, :string
    add_column    :users, :groupRecreation, :string
    add_column    :users, :groupRecipe, :string
    add_column    :users, :groupCoupon, :string
  end
end
