class Notecard < ApplicationRecord
  has_many :topics, through: :topics_notecards
end
