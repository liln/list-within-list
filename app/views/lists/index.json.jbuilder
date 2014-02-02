json.array!(@lists) do |list|
  json.extract! list, :id, :description, :priority, :finished
  json.url list_url(list, format: :json)
end
