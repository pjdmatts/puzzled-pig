json.array!(@points) do |point|
  json.extract! point, :id, :name, :step
  json.url point_url(point, format: :json)
end
