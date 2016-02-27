class AddGeocharitable < ActiveRecord::Migration
  def change
    create_table :geocharitables do |t|
      t.belongs_to :charity, index: true
      t.belongs_to :city, index: true
      t.timestamps null: false
    end
  end
end
