class AddColumnsToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :number, :string
  end
end
