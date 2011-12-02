FactoryGirl.define do
  factory :post do
    title 'test'
  end

  factory :comment do
    sequence(:body) { |n| "body_#{n}" }
  end
end
