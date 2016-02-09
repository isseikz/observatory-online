class CreateObservatories < ActiveRecord::Migration
  def change
    create_table :observatories do |t|
      t.integer :address_id
      t.integer :observation_wavelength_id
      t.integer :general_use_id
      t.integer :longitude_latitude_id
      t.integer :comment_id
      t.text :description
      t.string :url

      t.timestamps null: false
    end
  end
end
