class User < ActiveRecord::Base
  has_many :albums
  has_many :comments
end
