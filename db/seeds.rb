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
