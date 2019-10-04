class NotecardSerializer < ActiveModel::Serializer
  attributes :id, :topic_id, :term, :definition
end
