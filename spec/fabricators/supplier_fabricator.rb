Fabricator(:supplier) do
  email                  { Faker::Internet.email }
  password               "password"
  username               { Faker::Internet.user_name }
  company_name           { Faker::Company.name }
  address                { Faker::Address.street_address }
  first_name             { Faker::Name.first_name }
  last_name              { Faker::Name.last_name }
  mobile                 { Faker::PhoneNumber.cell_phone }
  telephone              { Faker::PhoneNumber.phone_number }
  birthday               { Faker::Business.credit_card_expiry_date }
  venues(count: 4) { Fabricate.build(:venue, supplier: nil) }
end
