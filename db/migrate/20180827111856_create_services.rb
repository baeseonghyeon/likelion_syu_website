class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :title
      t.string :team
      t.text :content
      t.text :url
      t.string :image,      null: false, default: ""
      t.belongs_to :main
      t.belongs_to :user

      t.timestamps
    end
  end
end
