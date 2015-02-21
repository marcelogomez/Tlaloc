json.array!(@tips) do |tip|
  json.extract! tip, :id, :category_id, :content, :image, :shown
  json.url tip_url(tip, format: :json)
end
