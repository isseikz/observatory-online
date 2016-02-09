class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :observatory_id
      t.integer :prefecture_id
      t.integer :city_id
      t.integer :ward_id
      t.string :access

      t.timestamps null: false
    end
  end
end
