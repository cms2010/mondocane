class CreateShowimages < ActiveRecord::Migration
  def self.up
    create_table :showimages do |t|
      t.string :url
      t.integer :show

      t.timestamps
    end
  end

  def self.down
    drop_table :showimages
  end
end
