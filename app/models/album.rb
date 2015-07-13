class Album < ActiveRecord::Base
  belongs_to :user
  has_many :photos, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :title, presence:true



  def title=(s)
    super s.titleize
  end
end
