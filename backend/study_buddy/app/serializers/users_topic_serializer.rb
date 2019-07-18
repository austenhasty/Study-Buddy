class UsersTopicSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :topic_id
end
