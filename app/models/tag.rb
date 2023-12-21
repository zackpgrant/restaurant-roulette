class Tag < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :franchise_tags, dependent: :destroy
  has_many :franchises, through: :franchise_tags
end