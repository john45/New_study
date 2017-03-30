# frozen_string_literal: true

class AddNameToWorkers < ActiveRecord::Migration
  def change
    add_column :workers, :name, :string
  end
end
