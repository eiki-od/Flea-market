class CreateAdresses < ActiveRecord::Migration[6.0]
  def change
    create_table :adresses do |t|
      t.integer :postal_code,                null: false
      t.integer :prefecture_id,              null: false
      t.string :city,                        null: false
      t.string :street
      t.references :user
      t.timestamps
    end
  end
end
