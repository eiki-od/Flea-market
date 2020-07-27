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

# |name|string|null: false|
# |about|text|null: false|
# |size|integer|null: false|
# |status|integer|null: false|
# |fee|string|null: false|
# |days|string|null: false|
# |price|integer|null: false|
# |brand|string||
# |user_id|integer|null: false, foreign_key: true|
# |category_id|integer|null: false, foreign_key: true|