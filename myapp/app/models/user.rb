class User < ApplicationRecord
    validates_uniqueness_of :email
    validates_uniqueness_of :phone_number

    validates   :email, presence: true
    validates   :phone_number, presence: true
    validates   :username, presence: true
end
