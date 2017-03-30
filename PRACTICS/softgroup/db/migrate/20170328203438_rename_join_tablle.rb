# frozen_string_literal: true

class RenameJoinTablle < ActiveRecord::Migration
  def up
    rename_table :user_tasks, :tasks_users
  end

  def down
    rename_table :tasks_users, :user_tasks
  end
end
