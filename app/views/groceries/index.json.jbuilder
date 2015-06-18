json.array!(@groceries) do |grocery|
  json.extract! grocery, :id, :productid, :productname, :productdiscription
  json.url grocery_url(grocery, format: :json)
end
