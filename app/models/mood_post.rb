class MoodPost < ApplicationRecord
  belongs_to :mood
  belongs_to :post
end
