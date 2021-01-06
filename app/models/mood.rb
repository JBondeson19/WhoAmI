class Mood < ApplicationRecord

  validates :emotion, uniqueness: true

  belongs_to :user
  
  has_many :mood_posts, dependent: :destroy
  has_many :posts, through: :mood_posts
end
