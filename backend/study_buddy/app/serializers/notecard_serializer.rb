class NotecardSerializer < ActiveModel::Serializer
  attributes :id, :term, :definition, :topic_id
end
