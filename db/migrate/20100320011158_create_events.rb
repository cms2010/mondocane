class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.string :subtitle
      t.string :url
      t.string :date1
      t.string :date2
      t.string :address1
      t.string :address2
      t.string :city

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
