FactoryGirl.define do
  factory :transfer do
    account_number_from Faker::Number.number(18)
    account_number_to   Faker::Number.number(18)
    country_code_from   "USD"
    country_code_to     "EUR"
    amount_pennies      Faker::Number.between(1,5)
    user                User.first
  end
end
