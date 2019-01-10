class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, foreign_key: true
      t.string :category
      t.string :lecture
      t.datetime :limit
      t.string :attachment

      t.timestamps
    end
  end
end
