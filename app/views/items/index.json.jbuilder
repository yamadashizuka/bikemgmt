json.array!(@items) do |item|
  json.extract! item, :id, :itemtype_id, :nickname, :distance, :memo
  json.url item_url(item, format: :json)
end
