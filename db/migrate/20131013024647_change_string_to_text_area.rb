class ChangeStringToTextArea < ActiveRecord::Migration
  def change
    change_column :recipes, :dishType, :text , :limit => nil
    change_column :recipes, :dish, :text , :limit => nil
    change_column :recipes, :ingredientsSimplified, :text , :limit => nil
    change_column :recipes, :ingredients, :text , :limit => nil
    change_column :recipes, :nutrition, :text , :limit => nil
    change_column :recipes, :directions, :text , :limit => nil
    change_column :recipes, :serves, :text , :limit => nil
    change_column :coupons, :name, :text , :limit => nil
    change_column :coupons, :location, :text , :limit => nil
    change_column :coupons, :address, :text , :limit => nil
    change_column :coupons, :item, :text , :limit => nil
    change_column :coupons, :when, :text , :limit => nil
    change_column :recreations, :name, :text , :limit => nil
    change_column :recreations, :location, :text , :limit => nil
    change_column :recreations, :address, :text , :limit => nil
    change_column :recreations, :audience, :text , :limit => nil
    change_column :recreations, :info, :text , :limit => nil
    change_column :recreations, :days, :text , :limit => nil
    change_column :recreations, :timeOfDay, :text , :limit => nil
  end
end
