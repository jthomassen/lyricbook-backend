class User < ApplicationRecord
    has_secure_password 

    has_many :lyrics

    validates :username, uniqueness: true
end
