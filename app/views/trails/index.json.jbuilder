json.array!(@trails) do |trail|
  json.extract! trail, :id, :name
  json.url trail_url(trail, format: :json)
end
