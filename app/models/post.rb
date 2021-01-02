class Post < ApplicationRecord
  belongs_to :user
  has_many :mood_posts, dependent: :destroy
  has_many :moods, through: :mood_posts
end
