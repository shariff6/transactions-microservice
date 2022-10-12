class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.bigint :user_id
      t.bigint :input_amount
      t.bigint :output_amount
      t.string :input_currency
      t.string :output_currency

      t.timestamps
    end
  end
end
