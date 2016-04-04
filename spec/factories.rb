FactoryGirl.define do
  factory :user do
    name "Vasya"
    email "iamthegod@mail.ru"
    password "securepass"
    password_confirmation "securepass"
  end
end
