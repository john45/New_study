class AddcountercachetoUser < ActiveRecord::Migration
  def up
    add_column :users, :posts_count, :integer
  end

  def down
    remove_column :users, :posts_count
  end
end
