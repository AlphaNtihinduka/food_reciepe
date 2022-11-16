class Food < ApplicationRecord
  has_many :inventoryfoods
  has_many :inventory, through: :inventoryfoods
  has_many :recipefoods
  has_many :recipes, through: :recipefoods

  validates :name, presence: true
end
