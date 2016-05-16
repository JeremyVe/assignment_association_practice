class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.integer :user_id
      t.integer :post_id

      t.timestamps null: false
    end

    add_foreign_key :comments, :users
    add_foreign_key :comments, :posts
  end
end
