class Favorite < ApplicationRecord
  belongs_to :item
  belongs_to :user
  audited associated_with: :user
end
