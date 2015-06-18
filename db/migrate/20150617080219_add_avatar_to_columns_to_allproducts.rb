class AddAvatarToColumnsToAllproducts < ActiveRecord::Migration
  def up
    add_attachment :allproducts, :avatar
  end

  def down
    remove_attachment :allproducts, :avatar
  end
end
