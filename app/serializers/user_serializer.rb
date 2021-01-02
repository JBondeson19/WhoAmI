class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :moods
  has_many :posts
end
