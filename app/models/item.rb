class Item < ApplicationRecord
  belongs_to :department
  has_many :requests, dependent: :destroy

  validates :name, :category, :description, :make, presence: true
  validates :name, uniqueness: true
end
