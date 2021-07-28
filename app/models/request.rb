class Request < ApplicationRecord
  belongs_to :item
  belongs_to :user
  has_one :transport_ticket, dependent: :destroy

  validates :status, presence: true
  validates :status, inclusion: { in: %w[pending in_delivery delivered accepted declined] }
end
