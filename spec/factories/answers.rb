FactoryGirl.define do
  factory :answer do
    body "test answer to some question"
    user_id 1
    question_id 1
  end
end
