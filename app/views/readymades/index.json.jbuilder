json.array!(@readymades) do |readymade|
  json.extract! readymade, :id, :productid, :productname, :productdiscription
  json.url readymade_url(readymade, format: :json)
end
