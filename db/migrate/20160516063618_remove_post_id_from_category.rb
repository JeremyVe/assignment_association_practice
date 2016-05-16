class RemovePostIdFromCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :post_id
    add_column :posts, :category_id, :integer
  end
  add_foreign_key :posts, :categoriesr
end
