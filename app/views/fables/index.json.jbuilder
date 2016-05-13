json.array!(@fables) do |fable|
  json.extract! fable, :id
  json.url fable_url(fable, format: :json)
end
