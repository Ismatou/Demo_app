json.array!(@userbarries) do |userbarry|
  json.extract! userbarry, :id, :ismatbarry@yahoo.fr
  json.url userbarry_url(userbarry, format: :json)
end
