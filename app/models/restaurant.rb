class Restaurant < ApplicationRecord
  # Validations
  validates :address, presence: true
  validates :phone_number, format: { with: /\A\d{10}\z/, message: "must be 10 digits" }, allow_blank: true

  serialize :hours, JSON
  validates :hours, presence: true

  # Associations
  belongs_to :franchise

end