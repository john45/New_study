# frozen_string_literal: true

class AddDateColumn < ActiveRecord::Migration
  #  ActiveSupport.on_load(:active_record) do
  # class ActiveRecord::ConnectionAdapters::Mysql2Adapter
  #   NATIVE_DATABASE_TYPES[:primary_key] = "int(11) auto_increment PRIMARY KEY"
  # end

  def up
    add_column :books, :year, :date
  end

  def down
    remove_column :books, :year
  end
end
