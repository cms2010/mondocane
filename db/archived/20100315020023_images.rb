class Images < ActiveRecord::Migration
  def self.up
    create_table :images do |table|
      table.column :url, :string
    end
  end

  def self.down
    drop_table :images
  end
end
