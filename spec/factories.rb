FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "jhon#{n}" }
    password "secret"
    email { "#{username}@example.com" }
  end
end