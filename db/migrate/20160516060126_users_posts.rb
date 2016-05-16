class UsersPosts < ActiveRecord::Migration
  def change
    create_table :users_posts do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps null: false
    end
    add_foreign_key :users_posts, :users
    add_foreign_key :users_posts, :posts
  end
end
