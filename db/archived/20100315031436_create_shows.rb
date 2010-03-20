class CreateShows < ActiveRecord::Migration
  def self.up
    create_table :shows do |t|
      t.string, :artist
      t.string, :title
      t.string, :date
      t.text, :description
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :shows
  end
end
