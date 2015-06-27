json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :description, :starts_at, :ends_at
  json.url promotion_url(promotion, format: :json)
end
