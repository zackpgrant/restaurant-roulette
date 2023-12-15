class Restaurant < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, format: { with: /\A\d{10}\z/, message: "must be 10 digits" }, allow_blank: true

  serialize :hours, Hash
  validates :hours, presence: true

  # Associations
  has_many :restaurant_tags, dependent: :destroy
  has_many :tags, through: :restaurant_tags

end