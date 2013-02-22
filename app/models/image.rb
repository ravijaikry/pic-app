class Image < ActiveRecord::Base
  belongs_to :album  
  has_attached_file :photo, :styles => { :small => "150x150>" },
    :url  => "/assets/photos/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension"
  validates_attachment_size :photo, :in => 0.megabytes..2.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpg','image/jpeg', 'image/png', 'image/gif', 'image/bmp']
  attr_accessible :photo
end
