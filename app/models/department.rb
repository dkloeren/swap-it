class Department < ApplicationRecord
  validates :name, :location, :site, presence: true
  validates :name, uniqueness: true

  has_many :users
  has_many :requests, through: :users
  has_many :items
  has_many :transport_tickets
end
