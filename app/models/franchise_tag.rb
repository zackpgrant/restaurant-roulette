# app/models/franchise_tag.rb
class FranchiseTag < ApplicationRecord
  belongs_to :franchise
  belongs_to :tag
end
