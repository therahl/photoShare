class Photo < ActiveRecord::Base
  belongs_to :album
  has_many :comments

  has_attached_file :image, :styles => { :medium => "300x300>", :large => "600x600>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_presence :image
end
