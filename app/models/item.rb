class Item < ApplicationRecord
  # uses singular form of the parent (user) for one to many
  # no dependent destroy in this direction. Destroying item does NOT destroy user.
  belongs_to :user 

has_many :characterizations, dependent: :destroy
has_many :complaints, through: :characterizations
has_many :favorites, dependent: :destroy
# ^ if an item is destroyed, all of its favorites are also automatically destroyed.
has_many :fans, through: :favorites, source: :user

    FLAIRS = ["no flair", "Bought", "Sold", "User Favorite"]

    SIZES = ["XS", "S", "M", "L", "XL", "Unknown", "One Size", "Other", "Shoe: 7.5M", "Shoe 8M", "Shoe 8.5W", "Shoe 9W", "Shoe 9.5W"]

    STARS = [1, 2, 3, 4, 5]
    
    BRANDS = ["other", "unknown", "ASOS", "Abercrombie & Fitch", "Adidas", "All in Motion (Target)",
         "American Eagle", "Apt. 9", "BDG", "BELLA+CANVAS", "Billabong", "Birkenstock", "Brandy Melville", 
         "Burton", "Cactus Man", "Carbon", "Champion", "Chubbies", "Coach", "Comfort Colors", "Converse", 
         "Converse", "Crocs", "Dickies", "Dr. Martens", "Eddie Bauer", "Fabletics", "Forever 21", 
         "Free People", "George", "Gildan", "Goodfellow", "Goodthreads", "Guess", "Gymshark", 
         "H&M", "Hollister", "Hot Topic", "Hurley", "J.Crew", "Jordans", "L.L.Bean", "Levi's", "Liquid Blue", 
         "Liz Claiborne", "Lululemon", "Mossimo Supply Co.", "Next Level", "Nike", "O'Neill", "Obey", "On the Byas", 
         "Pacsun", "Patagonia", "Pink Floyd", "Quiksilver", "RIPNDIP", "RVCA", "Reebok", "Ripcurl", "Saucony", 
         "Shein", "Skechers", "Sonoma", "Southern Tide", "Sperrys", "Tek Gear", "Topshop", "Torrid", "Under Armour", 
         "Urban Outfitters", "Vans", "Vineyard Vines", "Volcom", "Wild Fable", "Zara"]

  validates :description, :found_on, :stars, :size, :brand, presence: true
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  #^^ item names MUST be unique regardless of whether they use upper or lower case characters!
  validates :description, length: { minimum: 10 }
  validates :image_file_name, format: {
    with: /\w+\.(jpg|png)\z/i,
    message: "must be a JPG or PNG image"
  }
  validates :flair, inclusion: { in: FLAIRS }
  validates :size, inclusion: { in: SIZES }
  validates :brand, inclusion: { in: BRANDS }
  validates :stars, inclusion: { in: STARS } 

# FOR ITEM MODEL
#shows ALL ITEMS by the most recently updated!
scope :all_items, -> { all.order("updated_at desc").order("found_on desc") } 
#shows RECENTLY ADDED with limit of 5 displayed
scope :recently_added, ->(max=5) { all.order("created_at desc").limit(max) } 
# scope :MOST LIKED, TO BE DEFINED LATER
#sorts all items by HIGHEST RATED, showing newest found_on at the top
scope :top_rated, -> { all.order("stars desc").order("found_on desc") }  
scope :most_liked, -> { fans.order("size desc").order("found_on desc") }  
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


end

