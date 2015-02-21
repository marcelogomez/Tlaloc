json.array!(@tutorial_contents) do |tutorial_content|
  json.extract! tutorial_content, :id, :tutorial_id, :name, :image, :sequence
  json.url tutorial_content_url(tutorial_content, format: :json)
end
