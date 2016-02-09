class CreateLongitudeLatitudes < ActiveRecord::Migration
  def change
    create_table :longitude_latitudes do |t|
      t.decimal :longitude, :precision => 9, :scale => 6
      t.decimal :latitude, :precision => 9, :scale => 6
      t.timestamps null: false
    end
  end
end
