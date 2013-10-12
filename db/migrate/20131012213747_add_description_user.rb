class AddDescriptionUser < ActiveRecord::Migration
  def change
    add_column    :users, :userNote, :string
  end
end
