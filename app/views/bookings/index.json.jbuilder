json.array!(@bookings) do |booking|
  json.extract! booking, :id, :title, :date_reserved, :starts_at, :ends_at, :all_day, :status, :message, :expiry_date, :is_viewed, :all_reserved, :venue_id, :room_id, :user_id
  json.url booking_url(booking, format: :json)
end
