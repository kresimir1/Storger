FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "john#{n}@gmail.com" }
    first_name "John"
    last_name "White"
    password "password"
    password_confirmation "password"
  end
end
