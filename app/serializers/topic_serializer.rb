class TopicSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_many :sides
  has_many :conditions
  belongs_to :user
end
