class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name,        null: false
      t.string :token,       null: false
      t.timestamps 
    end
  end
end
