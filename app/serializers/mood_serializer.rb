class MoodSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :emotion
end
