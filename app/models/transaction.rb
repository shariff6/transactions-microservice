class Transaction < ApplicationRecord
    belongs_to :user
    validates :user_id, presence: true
    validates :input_amount, presence: true
    validates :output_amount, presence: true
    validates :input_currency, presence: true
    validates :output_currency, presence: true
end
