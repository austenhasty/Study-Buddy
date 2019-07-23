class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :users, through: :users_topics
  has_many :users_topics
  has_many :notecards, through: :topics_notecards
  has_many :topics_notecards
end
