json.array!(@quiz_results) do |quiz_result|
  json.extract! quiz_result, :id, :user_id, :quiz_id, :n_correct, :score, :date
  json.url quiz_result_url(quiz_result, format: :json)
end
