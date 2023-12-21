class Franchise < ApplicationRecord
  validates :name, presence: true

  has_many :restaurants, dependent: :destroy
  has_many :franchise_tags, dependent: :destroy
  has_many :tags, through: :franchise_tags
end
