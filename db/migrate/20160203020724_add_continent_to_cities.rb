class AddContinentToCities < ActiveRecord::Migration
  def change
  	add_column :cities, :continent, :string
  end
end
