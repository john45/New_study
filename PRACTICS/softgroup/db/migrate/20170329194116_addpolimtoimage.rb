# frozen_string_literal: true

class Addpolimtoimage < ActiveRecord::Migration
  def change
    add_column :images, :share_image_id, :integer
    add_column :images, :share_image_type, :string
    add_index :images, %i(share_image_type share_image_id)
  end
end
