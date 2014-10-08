json.array!(@store_items) do |store_item|
  json.extract! store_item, :id, :name, :description, :price, :order_id, :rating_id
  json.url store_item_url(store_item, format: :json)
end
