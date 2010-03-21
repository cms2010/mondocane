class Show < ActiveRecord::Base
  has_many :showimage
  accepts_nested_attributes_for :showimage
end
