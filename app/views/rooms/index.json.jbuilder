json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :is_booked, :classification, :capacity, :booking_id, :venue_id, :amenities, :description
  json.url room_url(room, format: :json)
end
