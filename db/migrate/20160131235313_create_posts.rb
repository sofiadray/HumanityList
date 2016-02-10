class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.text :content
      t.references :charity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
