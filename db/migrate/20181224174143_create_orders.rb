class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.float :total_bill
      t.integer :status
      t.string :order_name
      t.string :order_address
      t.string :order_phone

      t.timestamps
    end
  end
end
