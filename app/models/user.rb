class User < ApplicationRecord
    has_secure_password

    has_many :moods, dependent: :destroy
    has_many :posts, dependent: :destroy

    
end
