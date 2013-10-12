json.array!(@recreations) do |recreation|
  json.extract! recreation, :name, :location, :address, :audience, :info, :days, :timeOfDay
  json.url recreation_url(recreation, format: :json)
end