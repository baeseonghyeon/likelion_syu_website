class Main < ApplicationRecord
  resourcify
  has_many :services
  has_many :posts
  # has_many :user
end
