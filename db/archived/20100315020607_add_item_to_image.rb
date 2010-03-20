class AddItemToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :item, :integer
  end

  def self.down
    remove_column :images, :item
  end
end
