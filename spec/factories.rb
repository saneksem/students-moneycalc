FactoryGirl.define do
  factory :user do |u|
    u.sequence(:id) { |n| n }
    u.name "Vasya"
    u.email "iamthegod@mail.ru"
    u.password "securepass"
    u.password_confirmation "securepass"
  end

  factory :transaction do
    amount 100
    user_id 1
    comment "created by factory"
  end
end
