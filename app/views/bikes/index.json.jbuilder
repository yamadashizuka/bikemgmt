json.array!(@bikes) do |bike|
  json.extract! bike, :id, :nickname, :type, :memo
  json.url bike_url(bike, format: :json)
end
