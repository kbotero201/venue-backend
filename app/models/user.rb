class User < ApplicationRecord
    has_many :tickets
    has_many :events, through: :tickets

    has_secure_password
end
