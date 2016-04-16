class TransactionsController < ApplicationController
  before_filter :set_user
  respond_to :html, :json

  def index
    @transactions = @user.transactions
  end

  def show
  end

  def create
    Rails.logger.warn transaction_params
    @transaction = current_user.transactions.create(transaction_params)
    redirect_to user_transactions_path(@user)
  end

  def new
    @transaction = current_user.transactions.build
  end

  private

  def set_user
    user_id = params[:user_id]
    @user = User.find(user_id)
  end

  def transaction_params
    params.require(:transaction).permit(:amount, :comment, :user_id)
  end
end
