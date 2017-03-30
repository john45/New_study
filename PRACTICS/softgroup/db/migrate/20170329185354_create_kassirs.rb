# frozen_string_literal: true

class CreateKassirs < ActiveRecord::Migration
  def change
    create_table :kassirs do |t|
      t.string :name

      t.timestamps
    end
  end
end
