class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.integer :post_id

      t.timestamps null: false
    end
    add_foreign_key :categories, :posts
  end
end
