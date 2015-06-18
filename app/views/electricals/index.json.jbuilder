json.array!(@electricals) do |electrical|
  json.extract! electrical, :id, :productid, :productname, :productdiscription
  json.url electrical_url(electrical, format: :json)
end
