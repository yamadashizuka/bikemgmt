json.array!(@itemhistories) do |itemhistory|
  json.extract! itemhistory, :id, :item_id, :start_date, :end_date, :distance, :memo
  json.url itemhistory_url(itemhistory, format: :json)
end
