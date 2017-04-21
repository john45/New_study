# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.datetime :published_at
      t.integer :user_id

      t.timestamps
    end
  end
end
