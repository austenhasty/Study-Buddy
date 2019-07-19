class NotecardSerializer < ActiveModel::Serializer
  attributes :id, :term, :definition
  has_many :topics, through: :topics_notecards
end
