# frozen_string_literal: true

class CreateBatons < ActiveRecord::Migration
  def change
    create_table :batons do |t|
      t.string :name

      t.timestamps
    end
  end
end
