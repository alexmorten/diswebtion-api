class ConditionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  belongs_to :topic
end
