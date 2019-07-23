class UsersTopicSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :topic_id
  belongs_to :user
  belongs_to :topic
end
