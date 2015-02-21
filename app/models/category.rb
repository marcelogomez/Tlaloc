class Category < ActiveRecord::Base
  has_many :tips
  has_many :quizs
  has_many :tutorials
end
