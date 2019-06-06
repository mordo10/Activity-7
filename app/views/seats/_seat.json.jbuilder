json.extract! seat, :id, :flight_id, :name, :baggage, :created_at, :updated_at
json.url seat_url(seat, format: :json)
