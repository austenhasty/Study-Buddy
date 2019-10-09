class Notecard < ApplicationRecord
has_many :topics_notecards
has_many :topics, through: :topics_notecards
end
