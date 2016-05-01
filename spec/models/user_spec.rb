require 'rspec'
require 'rails_helper'

describe User, type: :model do
  describe "with valid user" do
    before { @user = build(:user) }

    subject { @user }

    it { should respond_to :password }
    it { should respond_to :password_confirmation }
    it { should respond_to :name }
    it { should respond_to :email }
    it { should be_valid }
  end

  describe "with invalid user" do
    before { @user = build(:user, password: 1, password_confirmation: 1, name: nil, email: "") }

    subject { @user }

    it { should_not be_valid }
  end

  describe "create transaction" do
    before { @user = build(:user), @transaction = build(:transaction) }

    subject { @transaction }

    it { should be_valid }
  end
end

