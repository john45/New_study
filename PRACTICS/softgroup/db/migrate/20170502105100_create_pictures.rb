class CreatePictures < ActiveRecord::Migration
  def change
    # drop_table :pictures
    create_table :pictures do |t|
      t.string :title
      t.integer :imageable_id
      t.string :imageable_type

      t.timestamps
    end
    add_index :pictures, [:imageable_id, :imageable_type]
  end
end
