class AddAvatarToColumnsToReadymades < ActiveRecord::Migration
 def up
    add_attachment :readymades, :avatar
  end

  def down
    remove_attachment :readymades, :avatar
  end
end
