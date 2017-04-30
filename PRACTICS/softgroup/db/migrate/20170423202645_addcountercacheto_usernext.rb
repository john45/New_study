# frozen_string_literal: true

class AddcountercachetoUsernext < ActiveRecord::Migration
  def change
    change_column :users, :posts_count, :integer, default: 0
  end
end
