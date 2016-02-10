class AddColumnToObservatory < ActiveRecord::Migration
  def change
    add_column :observatories, :name, :string
    add_column :observatories, :location, :string
  end
end
