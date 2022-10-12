class Api::TransactionsController < ApplicationController
  def index
    response = Transaction.all
    render json: response, status: 200
  end

  def show
  end

  def create
    user_id = 1234565453,
    input_amount = params[:input_amount]*100
    input_currency = params[:input_currency]
    output_currency = params[:output_currency]
    output_amount = Money.from_cents(input_amount, input_currency).exchange_to(output_currency)
    transaction = Transaction.new(user_id: user_id, input_amount: input_amount, input_currency: input_currency, output_currency: output_currency, output_amount: output_amount.fractional)

    if transaction.save
      render json: transaction, status: 200 
    end
  end
end
