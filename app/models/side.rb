class Side < ApplicationRecord
  belongs_to :topic
  belongs_to :user
end
