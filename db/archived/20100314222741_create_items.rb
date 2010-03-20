class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :title
      t.string :category
      t.string :country
      t.string :year
      t.string :dimensions
      t.string :price
      t.text :description
      t.string :url
      t.integer :home
      t.integer :collection
      t.integer :archive

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
