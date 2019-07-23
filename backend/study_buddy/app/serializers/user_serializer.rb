class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :password
  has_many :topics, through: :users_topics
  has_many :users_topics
end
