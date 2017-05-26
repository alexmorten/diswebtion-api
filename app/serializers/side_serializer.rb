class SideSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_many :arguments
  belongs_to :topic
end
