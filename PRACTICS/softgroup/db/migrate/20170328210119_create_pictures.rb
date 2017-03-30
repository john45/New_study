# frozen_string_literal: true

class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name_of_pic
      t.references :pic_for_all, polymorphic: true, index: true

      t.timestamps
    end
  end
end
