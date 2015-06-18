class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
      t.integer :productid
      t.string :productname
      t.string :productdiscription

      t.timestamps null: false
    end
  end
end
