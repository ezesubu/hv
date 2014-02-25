json.array!(@ezes) do |eze|
  json.extract! eze, :id, :name
  json.url eze_url(eze, format: :json)
end
