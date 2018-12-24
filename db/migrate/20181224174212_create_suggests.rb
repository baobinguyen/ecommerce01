class CreateSuggests < ActiveRecord::Migration[5.2]
  def change
    create_table :suggests do |t|
      t.integer :user_id
      t.string :name
      t.float :price
      t.string :picture
      t.string :description

      t.timestamps
    end
  end
end
