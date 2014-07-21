Fabricator(:room) do
  venue
  name           { Faker::Company.name }
  capacity       { Faker::Number.number(3)}
  booking_id     :integer
  amenities      :text
  classification "Room"
  description    { Faker::Company.catch_phrase }
end
