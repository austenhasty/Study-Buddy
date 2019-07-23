class TopicsNotecardSerializer < ActiveModel::Serializer
  attributes :id, :topic_id, :notecard_id
  belongs_to :topic
  belongs_to :notecard
end
