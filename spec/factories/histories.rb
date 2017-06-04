FactoryGirl.define do
  factory :history do
    city     { Faker::Address.city }
    user_id         { Faker::PhoneNumber.extension}
  end
end
