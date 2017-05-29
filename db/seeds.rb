10.times do |i|
    first_name  = Faker::Name.first_name
    last_name   = Faker::Name.last_name
    email       = Faker::Internet.free_email(first_name + "-" + last_name)
    dob         = Faker::Date.between(100.years.ago, 20.years.ago)
    address     = Faker::Address.street_address
    password    = "123456"

User.create!(
        first_name:     first_name,
        last_name:      last_name,
        address_line_1: address,
        dob:            dob,
        email:          email,
        password:       password,
        password_confirmation: password,
    )
end

50.times do |i|
  account_number_from = Faker::Number.number(18)
  account_number_to   = Faker::Number.number(18)
  country_code_from   = "USD"
  country_code_to     = "EUR"
  amount_pennies      = Faker::Number.number(3)
  user                = User.find(Faker::Number.between(1,10))
  Transfer.create!(
    account_number_from:  account_number_from,
    account_number_to:    account_number_to,
    country_code_from:    country_code_from,
    country_code_to:      country_code_to,
    amount_pennies:       amount_pennies,
    user:                 user
  )
end
