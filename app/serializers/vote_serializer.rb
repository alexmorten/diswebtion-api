class VoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :value
  has_one :argument
  has_one :condition
  has_one :user
end
