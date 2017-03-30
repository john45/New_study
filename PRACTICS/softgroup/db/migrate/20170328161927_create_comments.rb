# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
