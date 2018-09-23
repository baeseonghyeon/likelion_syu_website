class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, foreign_key: true
      # t.belongs_to :user, :foreign_key => 'user_id'
      # t.belongs_to :user, foreign_key: 'user_id'
      # t.references :user_id,  foreign_key: true
      t.string :category
      t.string :lecture
      t.datetime :limit

      t.timestamps
    end
    # add_reference :user, foreign_key: {to_table: :users}
    # add_foreign_key :posts, :users, column: :user_id
    # add_foreign_key :posts, references: :users
  end
end
