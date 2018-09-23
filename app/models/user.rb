class User < ApplicationRecord
  has_many :posts
  has_many :services
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_uniqueness_of :nickname
  mount_uploader :image, ImageUploader
end
