FactoryGirl.define do
  factory :user do
    unique_identifier     { Faker::Vehicle.vin }
  end
end
