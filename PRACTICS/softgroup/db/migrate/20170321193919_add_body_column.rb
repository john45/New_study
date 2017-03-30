# frozen_string_literal: true

class AddBodyColumn < ActiveRecord::Migration
  def up
    add_column :books, :body, :text
  end

  def down
    remove_column :books, :body
  end
end
