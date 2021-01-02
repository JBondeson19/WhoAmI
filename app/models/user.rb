class User < ApplicationRecord
    has_many :moods, dependent: :destroy
    has_many :posts, dependent: :destroy
end
