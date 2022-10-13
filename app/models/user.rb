class User < ApplicationRecord
    has_secure_password
    # attr_accessor :password, :password_confirmation

    validates :name, presence: true
    validates :email, presence: true
end
