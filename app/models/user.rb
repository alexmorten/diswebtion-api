class User < ApplicationRecord

  devise :database_authenticatable, :recoverable,
         :trackable, :validatable, :registerable

  # note that this include statement comes AFTER the devise block above
  include DeviseTokenAuth::Concerns::User



  has_many :topics
  has_many :sides
  has_many :arguments
  has_many :conditions

end
