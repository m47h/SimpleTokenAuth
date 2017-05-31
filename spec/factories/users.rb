FactoryGirl.define do
  factory :user do
    email Faker::Internet.unique.email
    password Faker::Crypto.md5
    first_name Faker::Name.first_name
    last_name  Faker::Name.last_name
    dob        Faker::Date.between(100.years.ago, 20.years.ago)
    address_line_1    Faker::Address.street_address
    admin false
  end
end
