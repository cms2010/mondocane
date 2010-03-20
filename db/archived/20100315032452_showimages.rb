class Showimages < ActiveRecord::Migration
  def self.up
    create_table :showimages do |table|
      table.column :url, :string
      table.column :show, :integer
    end
  end

  def self.down
    drop_table :showimages
  end
end
