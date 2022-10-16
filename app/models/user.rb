class User < ApplicationRecord
  has_secure_password
  has_many :transactions
  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  enum role: %i[user manager admin].freeze
end
