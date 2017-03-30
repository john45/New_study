# frozen_string_literal: true

class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.references :manager, index: true
      t.timestamps
    end
  end
end
