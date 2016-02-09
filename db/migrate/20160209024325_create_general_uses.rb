class CreateGeneralUses < ActiveRecord::Migration
  def change
    create_table :general_uses do |t|
      t.integer :observatory_id
      t.integer :category
      t.text :notice

      t.timestamps null: false
    end
  end
end
