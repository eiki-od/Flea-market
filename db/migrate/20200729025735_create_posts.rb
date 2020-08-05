class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :about
      t.string :area
      t.string :category
      t.string :size
      t.string :status
      t.string :fee
      t.string :method
      t.string :days
      t.integer :price
      t.string :bland
      t.timestamps
    end
  end
end
