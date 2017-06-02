class SideSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :rating
  has_many :arguments
  belongs_to :user
  belongs_to :topic
end
