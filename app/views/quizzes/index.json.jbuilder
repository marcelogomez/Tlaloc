json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :category_id, :name, :description
  json.url quiz_url(quiz, format: :json)
end
