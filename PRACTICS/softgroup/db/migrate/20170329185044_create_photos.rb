# frozen_string_literal: true

class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.integer :pic_for_all_id
      t.string :pic_for_all_type

      t.timestamps
    end
    add_index :photos, :pic_for_all_id
  end
end
