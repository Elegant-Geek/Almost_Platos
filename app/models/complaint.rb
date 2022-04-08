class Complaint < ApplicationRecord
    has_many :characterizations, dependent: :destroy
    has_many :items, through: :characterizations
    validates :name, presence: true, uniqueness: true
end
