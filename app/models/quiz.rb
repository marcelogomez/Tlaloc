class Quiz < ActiveRecord::Base
  belongs_to :category
  has_many :questions
  has_many :quiz_results
end
