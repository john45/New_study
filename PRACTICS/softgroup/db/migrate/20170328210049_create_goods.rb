# frozen_string_literal: true

class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :title

      t.timestamps
    end
  end
end
