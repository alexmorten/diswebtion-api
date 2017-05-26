class ArgumentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  belongs_to :side
end
