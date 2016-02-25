class CityStateRelationship < ActiveRecord::Migration
  def change
      change_table :cities do |t|
          t.belongs_to :state, index: true
      end 
  end
end
