class CreateCommentRaitings < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_raitings do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :contend
      t.integer :parent_id
      t.integer :raiting

      t.timestamps
    end
  end
end
