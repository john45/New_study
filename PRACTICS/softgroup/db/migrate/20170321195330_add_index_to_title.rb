# frozen_string_literal: true

class AddIndexToTitle < ActiveRecord::Migration
  def change
    add_index :books, :title
  end
end
