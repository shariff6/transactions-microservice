class Api::TransactionsController < ApplicationController

  def index
    if params[:page] && params[:per_page]
      transactions = current_user.transactions.paginate(:page => params[:page], :per_page => params[:per_page])  
    else
      transactions = current_user.transactions
    end
    if transactions
      render json: transactions, status: 200   
    else
      render json: transactions.errors.full_messages, status: 200
    end
  end

  def show
    transaction = Transaction.find_by(id: params[:id])
    if stale?(transaction)
      if transaction && transaction.user == current_user
        render json: transaction, status: 200   
      else
        render json: {error: "Transaction not found"}
      end
    end
  end

  def create
    user_id = current_user.id
    input_amount = params[:input_amount]*100
    input_currency = params[:input_currency]
    output_currency = params[:output_currency]
    output_amount = Money.from_cents(input_amount, input_currency).exchange_to(output_currency)
    transaction = Transaction.new(user_id: user_id, input_amount: input_amount, input_currency: input_currency, output_currency: output_currency, output_amount: output_amount.fractional)

    if transaction.save
      render json: transaction, status: 200 
    else
      render json: transaction.errors.full_messages
    end
  end
end
