# frozen_string_literal: true

class AddSomethingToBooks < ActiveRecord::Migration
  def change
    add_column :books, :alt_author, :string
  end
end
