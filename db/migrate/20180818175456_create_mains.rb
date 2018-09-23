class CreateMains < ActiveRecord::Migration[5.0]
  def change
    create_table :mains do |t|
      t.string :title
      t.text :content
      t.string :hidden
      t.integer :th
      t.integer :lion
      t.integer :hack
      t.timestamps
      t.text :applylink
      t.text :applycontent
    end
  end
end
