class Main < ApplicationRecord
  resourcify
  has_many :services
  has_many :posts
end
