class Inventory < ApplicationRecord
  belongs_to :user
  has_many :inventoryfoods, dependent: :destroy
  has_many :foods, through: :inventoryfoods, dependent: :destroy

  validates :name, presence: true, length: { maximum: 200 }
end
