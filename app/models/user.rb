class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :department
  has_many :requests, dependent: :destroy
  has_many :items, through: :request

  validates :last_name, :first_name, :role, :department, presence: true
end
