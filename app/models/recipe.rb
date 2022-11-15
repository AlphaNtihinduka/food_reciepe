class Recipe < ApplicationRecord
  belongs_to :User
  has_many :recipefoods
  has_many :foods, through: :recipefoods
end
