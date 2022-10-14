class User < ApplicationRecord
    has_secure_password
    # attr_accessor :password, :password_confirmation
    has_many :transactions
    validates :name, presence: true
    validates :email, presence: true
end
