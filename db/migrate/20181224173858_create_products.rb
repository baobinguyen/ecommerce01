class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :categorie_id
      t.string :name
      t.string :description
      t.string :unit
      t.float :price
      t.integer :unit_in_stock
      t.string :picture
      t.integer :top_sale

      t.timestamps
    end
  end
end
