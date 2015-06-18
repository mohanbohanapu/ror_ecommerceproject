json.array!(@allproducts) do |allproduct|
  json.extract! allproduct, :id, :productid, :productname, :productdiscription
  json.url allproduct_url(allproduct, format: :json)
end
