class CreateObservationWavelengths < ActiveRecord::Migration
  def change
    create_table :observation_wavelengths do |t|
      t.boolean :infrared
      t.boolean :visible
      t.boolean :xray
      t.boolean :radio

      t.timestamps null: false
    end
  end
end
