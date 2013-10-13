class ChangeStringLength < ActiveRecord::Migration
  def change
    change_column :recipes, :dishType, :string, :limit => nil
    change_column :recipes, :dish, :string, :limit => nil
    change_column :recipes, :ingredientsSimplified, :string, :limit => nil
    change_column :recipes, :ingredients, :string, :limit => nil
    change_column :recipes, :nutrition, :string, :limit => nil
    change_column :recipes, :directions, :string, :limit => nil
    change_column :recipes, :serves, :string, :limit => nil
    change_column :coupons, :name, :string, :limit => nil
    change_column :coupons, :location, :string, :limit => nil
    change_column :coupons, :address, :string, :limit => nil
    change_column :coupons, :item, :string, :limit => nil
    change_column :coupons, :when, :string, :limit => nil
    change_column :recreations, :name, :string, :limit => nil
    change_column :recreations, :location, :string, :limit => nil
    change_column :recreations, :address, :string, :limit => nil
    change_column :recreations, :audience, :string, :limit => nil
    change_column :recreations, :info, :string, :limit => nil
    change_column :recreations, :days, :string, :limit => nil
    change_column :recreations, :timeOfDay, :string, :limit => nil
  end
end
