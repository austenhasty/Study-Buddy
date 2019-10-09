class User < ApplicationRecord
has_many :users_topics
has_many :topics, through: :users_topics
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
