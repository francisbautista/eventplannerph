Fabricator(:room) do
  venue
  id             { sequence }
  name           { Faker::Company.name }
  capacity       { Faker::Number.number(3)}
  booking_id     :integer
  amenities      :text
  description    { Faker::Company.catch_phrase }
end
