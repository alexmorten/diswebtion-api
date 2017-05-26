class Topic < ApplicationRecord
  belongs_to :user
  has_many :sides
  has_many :conditions
end
