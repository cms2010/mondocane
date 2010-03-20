class AddImagesToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :images, :string
  end

  def self.down
    remove_column :items, :images
  end
end
