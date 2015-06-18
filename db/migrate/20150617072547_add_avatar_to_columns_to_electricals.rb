class AddAvatarToColumnsToElectricals < ActiveRecord::Migration
  def up
    add_attachment :electricals, :avatar
  end

  def down
    remove_attachment :electricals, :avatar
  end
end
