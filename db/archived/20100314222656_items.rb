class Items < ActiveRecord::Migration
  def self.up
    create_table :items do |table|
      table.column :title, :string
      table.column :category, :string
      table.column :country, :string
      table.column :year, :string
      table.column :dimensions, :string
      table.column :price, :string
      table.column :description, :text
      table.column :url, :string
      table.column :home, :integer
      table.column :collection, :integer
      table.column :archive, :integer
    end
  end

  def self.down
    drop_table :items
  end
end
