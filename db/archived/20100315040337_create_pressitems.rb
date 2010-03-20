class CreatePressitems < ActiveRecord::Migration
  def self.up
    create_table :pressitems do |t|
      t.string :title
      t.string :source
      t.string :date
      t.string :format
      t.string :url
      t.string :linkurl

      t.timestamps
    end
  end

  def self.down
    drop_table :pressitems
  end
end
