# frozen_string_literal: true

class AddTableBooks < ActiveRecord::Migration
  def up
    create_table :books do |t|
      t.string :author
      t.string :title
      t.integer :page_counter

      t.timestamps
    end
  end

  def down
    drop_table :books
  end
end
