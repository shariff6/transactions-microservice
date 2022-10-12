class Api::TransactionsController < ApplicationController
  def index
    transactions = Transaction.all
    render json: transactions, status: 200
  end

  def show
    transaction = Transaction.find_by(id: params[:id])
    if transaction
      render json: transaction, status: 200     
    else
      render json: {error: "Transaction not found"}
    end
  end

  def create
    user_id = null,
    # user_id = current_user
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
