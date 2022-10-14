FactoryBot.define do
    factory :transactions do
      user_id {23456}
      input_amount {100000}
      output_amount {12000000}
      input_currency {"USD"}
      output_currency {"KES"}
    end
  end