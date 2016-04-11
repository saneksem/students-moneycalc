class Transaction < ActiveRecord::Base
  belongs_to :user
  after_create :update_user_balance!
  validate :amount_is_not_zero

  def update_user_balance!
    user.balance += amount
    user.save!
  end

  def amount_is_not_zero
    errors.add(:amount, "can't be equal to 0") if amount == 0
  end
end
