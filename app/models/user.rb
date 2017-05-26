class User < ApplicationRecord
  has_many :topics
  has_many :sides
  has_many :arguments
  has_many :conditions
  
end
