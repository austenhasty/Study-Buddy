class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :users, through: :users_topics
  has_many :notecards, through: :topics_notecards
end
