class AddCityIdToCharities < ActiveRecord::Migration
  def change
    add_column :charities, :city_id, :integer
  end
end
