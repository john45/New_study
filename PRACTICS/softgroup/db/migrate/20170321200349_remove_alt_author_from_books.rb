# frozen_string_literal: true

class RemoveAltAuthorFromBooks < ActiveRecord::Migration
  def up
    remove_column :books, :alt_author
  end

  def down
    add_column :books, :alt_author, :string
  end
end
