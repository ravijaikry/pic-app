class Album < ActiveRecord::Base
  serialize :description
  attr_accessible :description, :title
  validates :title , :description , :presence => true
  has_many :images
  accepts_nested_attributes_for :images, :allow_destroy => true
  attr_accessible :images_attributes
end
