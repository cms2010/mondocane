class Shows < ActiveRecord::Migration
  def self.up
    create_table :shows do |table|
      table.column :artist, :string
      table.column :title, :string
      table.column :date, :string
      table.column :description, :text
      table.column :url, :string
    end
  end

  def self.down
    drop_table :shows
  end
end
