class ArgumentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :rating
  belongs_to :side
end
