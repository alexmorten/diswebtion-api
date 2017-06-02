class Argument < ApplicationRecord
  belongs_to :side
  belongs_to :user
  has_many :votes
  has_many :conditions, through: :votes

  def rating
    votes.average(:value).to_f
  end

end
