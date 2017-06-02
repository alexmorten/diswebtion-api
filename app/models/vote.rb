class Vote < ApplicationRecord
  belongs_to :argument
  belongs_to :condition
  belongs_to :user

  validates_inclusion_of :value, :in => -5..5
end
