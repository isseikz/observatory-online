class AddColumnToObservatory < ActiveRecord::Migration
  def change
    add_column :observatories, :name, :string
  end
end
