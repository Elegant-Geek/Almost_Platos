class User < ApplicationRecord
  has_many :items, dependent: :destroy #destroy all items when a user is destroyed.
  has_many :favorites, dependent: :destroy # if a user is destroyed, all of its favorites are also destroyed.
  has_many :favorite_items, through: :favorites, source: :item
  accepts_nested_attributes_for :items
  # the has secure password is automatically generated when you create a resource with a "password:digest" field
  has_secure_password 

validates :name, presence: true #, uniqueness: { case_sensitive: false }
validates :email, presence: true,
  format: { with: /\S+@\S+/ },
  uniqueness: { case_sensitive: false }
# validating the password length if it is not blank (validation will be skipped if it is blank)
validates :password, length: { minimum: 10, allow_blank: true }

validates :username, allow_blank: true,
                     format: { with: /\A[A-Z0-9]+\z/i },
                     uniqueness: { case_sensitive: false }

def gravatar_id
  Digest::MD5::hexdigest(email.downcase)
end

scope :everyone, -> { all.order(:name) }


end
