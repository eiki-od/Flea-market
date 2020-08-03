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
      t.string :brand
      t.integer :user_id
      t.integer :category_id
      t.timestamps
    end
  end
end
