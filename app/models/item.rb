class Item < ApplicationRecord


    FLAIRS = ["no flair", "Bought", "Sold", "Favorite"]

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

