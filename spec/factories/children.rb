FactoryGirl.define do
  factory :child do
    first_name "Brian"
    last_name "White"
    dob Date.parse('01/03/2015')
    gender "male"
    association :user, factory: :user
  end
end
