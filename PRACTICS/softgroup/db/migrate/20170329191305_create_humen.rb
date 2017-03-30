# frozen_string_literal: true

class CreateHumen < ActiveRecord::Migration
  def change
    create_table :humen do |t|
      t.string :name
      t.integer :age
      t.timestamps
    end
  end
end
