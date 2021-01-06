class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password
  has_many :moods
  has_many :posts
end
