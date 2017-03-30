class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :body
      t.integer :page

      t.timestamps
    end
    add_index :books, :title
  end
end
