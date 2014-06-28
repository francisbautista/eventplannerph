json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :address, :classification, :capacity, :is_featured, :location, :environment, :comments, :rates, :contact_persons, :contact_numbers, :status, :booking_count, :caterers, :policy, :is_booked, :freeroom_count, :email, :user_id
  json.url venue_url(venue, format: :json)
end
