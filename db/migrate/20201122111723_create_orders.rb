class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :steam_id
      t.string :status
      t.integer :user_id

      t.timestamps
    end
    add_index :orders, :steam_id
    add_index :orders, :user_id
  end
end
