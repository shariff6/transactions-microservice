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
    transaction = current_user.transactions.find_by(id: params[:id])
    if transaction
      render json: transaction, status: 200
    else
      render json: { error: "Transaction not found" }
    end
  end

  def create
    transaction = current_user.transactions.new(transaction_params)
    if transaction.save
      render json: transaction, status: 200
    else
      render json: transaction.errors.full_messages
    end
  end
end

private

def transaction_params
  params.require(:transaction).permit(:input_amount, :input_currency, :output_amount, :output_currency)
end
