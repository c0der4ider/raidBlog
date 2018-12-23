class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.text :content
      t.boolean :public, default: false
      t.belongs_to :category, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
    add_index :posts, :title
  end
end
