class Item < ActiveRecord::Base
  has_many :image
  accepts_nested_attributes_for :image
end
