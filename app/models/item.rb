class Item < ApplicationRecord
  # uses singular form of the parent (user) for one to many
  # no dependent destroy in this direction. Destroying item does NOT destroy user.
  belongs_to :user 
  audited associated_with: :user #audit setup
  # Now, when an audit is created for a item, that item's user is also saved alongside the audit. 
  # This makes it much easier (and faster) to access audits indirectly related to a user.
has_one_attached :main_image
has_many :characterizations, dependent: :destroy
has_many :complaints, through: :characterizations
has_many :favorites, dependent: :destroy
# ^ if an item is destroyed, all of its favorites are also automatically destroyed.
has_many :fans, through: :favorites, source: :user

    FLAIRS = ["no flair", "Bought", "Sold", "User Favorite"]

    SIZES = ["XS", "S", "M", "L", "XL", "Unknown", "One Size", "Other", "Shoe: 7.5M", "Shoe 8M", "Shoe 8.5W", "Shoe 9W", "Shoe 9.5W"]

    STARS = [1, 2, 3, 4, 5]

  validates :description, :found_on, :stars, :size, :brand, presence: true
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  #^^ item names MUST be unique regardless of whether they use upper or lower case characters!
  validates :description, length: { minimum: 10 }
  validate :acceptable_image
  # ^^ private method defined further below 
  validates :flair, inclusion: { in: FLAIRS }
  validates :size, inclusion: { in: SIZES }
  validates :brand, inclusion: { in: Brand.all.pluck(:name) }
  validates :stars, inclusion: { in: STARS } 

# FOR ITEM MODEL
#shows ALL ITEMS by the most recently updated!
scope :all_items, -> { all.order("updated_at desc").order("found_on desc") } 
#shows RECENTLY ADDED with limit of 5 displayed
scope :recently_added, ->(max=5) { all.order("created_at desc").limit(max) } 
# scope :MOST LIKED, TO BE DEFINED LATER
#sorts all items by HIGHEST RATED, showing newest found_on at the top
scope :top_rated, -> { all.order("stars desc").order("found_on desc") }  
scope :flair_bought, -> { all.where(flair: "Bought") }  
scope :flair_sold, -> { all.where(flair: "Sold") }  
scope :flair_favorites, -> { all.where(flair: "User Favorite") }  


    def stars_as_percent
      (stars / 5.0) * 100.0
    end

    def self.bought
      where(flair: "Bought").order("found_on desc") #orders most recently found to the top!
    end

    def self.sold
      where(flair: "Sold").order("found_on desc") #orders most recently found to the top!
    end

    def self.favorite
      where(flair: "Favorite").order("found_on desc") #orders most recently found to the top!
    end

    private
    def acceptable_image
      return unless main_image.attached?
    
      unless main_image.blob.byte_size <= 3.megabytes
        errors.add(:main_image, "is too big (over 3MB)")
      end
    
      acceptable_types = ["image/jpeg", "image/png"]
      unless acceptable_types.include?(main_image.content_type)
        errors.add(:main_image, "must be a JPEG or PNG")
      end
    end


end

