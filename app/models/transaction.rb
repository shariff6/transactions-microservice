class Transaction < ApplicationRecord
    belongs_to :user
    validates :user_id, presence: true
    validates :input_amount, presence: true
    validates :output_amount, presence: true
    validates :input_currency, presence: true
    validates :output_currency, presence: true


    def output_amount()
        Money.from_cents(input_amount, input_currency).exchange_to(output_currency).fractional 
    end

    before_save do
        self.input_amount = input_amount * 100
    end
    
end
