class User < ApplicationRecord
  has_many :topics, through: :users_topics
end
