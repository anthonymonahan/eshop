json.array!(@products) do |product|
  json.extract! product, :id, :manufacturer, :price, :category, :image
  json.url product_url(product, format: :json)
end
