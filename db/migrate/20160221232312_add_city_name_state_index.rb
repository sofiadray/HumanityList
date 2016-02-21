class AddCityNameStateIndex < ActiveRecord::Migration
  def change
   add_index :cities, [:name,:state_id], :unique => true
  end
end
