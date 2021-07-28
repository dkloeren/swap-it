class Request < ApplicationRecord
  belongs_to :item
  belongs_to :user
  has_one :transport_ticket, dependent: :destroy

  validates :status, presence: true
end
