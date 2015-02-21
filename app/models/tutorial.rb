class Tutorial < ActiveRecord::Base
  belongs_to :category
  has_many :tutorial_contents
end
