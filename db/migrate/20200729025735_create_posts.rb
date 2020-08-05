class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :about
      t.integer :size
      t.integer :status
      t.string :fee
      t.string :days
      t.integer :price
      t.string :bland
      t.timestamps
    end
  end
end
