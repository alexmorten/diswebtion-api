class Side < ApplicationRecord
  belongs_to :topic
  belongs_to :user
  has_many :arguments

  def rating
    arguments.joins(:votes).average("votes.value").to_f
  end
end
