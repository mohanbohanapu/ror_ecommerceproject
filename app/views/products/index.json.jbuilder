json.array!(@products) do |product|
  json.extract! product, :id, :productid, :productname, :productdiscription
  json.url product_url(product, format: :json)
end
