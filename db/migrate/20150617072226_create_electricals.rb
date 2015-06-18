class CreateElectricals < ActiveRecord::Migration
  def change
    create_table :electricals do |t|
      t.integer :productid
      t.string :productname
      t.string :productdiscription

      t.timestamps null: false
    end
  end
end
