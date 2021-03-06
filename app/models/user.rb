class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # before_save { self.email = email.downcase }
  # before_save { self.username = username.downcase }

  has_many :albums
  has_many :comments

  # validates_presence_of :family_name, :password, :given_name, :username, :email, length: { maximum: 50 }
  # validates :email,
  #           format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i},
  #           uniqueness: { case_sensitive: false }
  # validates :password, length: { minimum: 6 }
  #

end
