class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  # Remember to create a migration!
end