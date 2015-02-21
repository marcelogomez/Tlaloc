json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, :id, :category_id, :name, :description
  json.url tutorial_url(tutorial, format: :json)
end
