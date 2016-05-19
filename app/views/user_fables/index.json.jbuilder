json.array!(@user_fables) do |user_fable|
  json.extract! user_fable, :id
  json.url user_fable_url(user_fable, format: :json)
end
