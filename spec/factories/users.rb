FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password "password"
    confirmed_at DateTime.new()

    factory :admin do
      roles ["admin"]
    end
  end
end
