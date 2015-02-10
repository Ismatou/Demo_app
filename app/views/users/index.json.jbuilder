json.array!(@users) do |user|
  json.extract! user, :id, :Ismatou, :ismatou16@gmail.com
  json.url user_url(user, format: :json)
end
