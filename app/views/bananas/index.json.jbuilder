json.array!(@bananas) do |banana|
  json.extract! banana, :id, :name, :price
  json.url banana_url(banana, format: :json)
end
