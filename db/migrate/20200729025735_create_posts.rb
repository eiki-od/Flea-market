class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :about
      t.string :image
      t.string :area
      t.string :category
      t.string :size
      t.string :status
      t.string :fee
      t.string :delivery
      t.string :days
      t.integer :price
      t.string :bland
      t.references :user, index: true, foreign_key: true
      t.integer :buyer_id, foreign_key: true
      t.timestamps
    end
  end
end
