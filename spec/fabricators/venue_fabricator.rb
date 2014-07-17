Fabricator(:venue) do
  supplier_id     { Faker::Number.number(1) }
  name            { Faker::Company.name }
  address         { Faker::Address.street_address }
  classification  { %w(Bar Restaurant Hotel
                    Farm/Hacienda Garden
                    Church Ballroom Gallery 
                    Other).sample }
  capacity        { Faker::Number.number(4) }
  location        { Faker::Address.state }
  environment     { Faker::Address.city_suffix }
  comments        { Faker::Company.catch_phrase }
  rates           { Faker::Company.bs }
  contact_persons { Faker::Name.name }
  contact_numbers { Faker::PhoneNumber.cell_phone }
  booking_count   { Faker::Number.number(2) }
  caterers        { Faker::Company.name}
  policy          { Faker::Hacker.say_something_smart}
  freeroom_count  { Faker::Number.number(2) }
  email           { Faker::Internet.email }
end
