json.array!(@itemtypes) do |itemtype|
  json.extract! itemtype, :id, :name, :limitdistance, :memo
  json.url itemtype_url(itemtype, format: :json)
end
