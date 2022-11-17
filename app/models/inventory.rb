class Inventory < ApplicationRecord
  belongs_to :user
  has_many :inventoryfoods
  has_many :foods, through: :inventoryfoods

  validates :name, presence: true, length: { maximum: 200 }
end
