# frozen_string_literal: true

class ChangeUsersTable < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.remove :default
      t.remove :true
    end
  end

  def down
    change_table :users do |t|
      t.string :default
      t.string :true
    end
  end
end
