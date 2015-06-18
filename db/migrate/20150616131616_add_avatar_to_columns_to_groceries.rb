class AddAvatarToColumnsToGroceries < ActiveRecord::Migration
  def up
    add_attachment :groceries, :avatar
  end

  def down
    remove_attachment :groceries, :avatar
  end
end
