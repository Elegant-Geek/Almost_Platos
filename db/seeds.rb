# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   "create!" raises exceptions if validations fail
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ****************** FLASHION SEEDS FILE *******************
@han = User.create!(name: "Han", username: "SoloSolo", email: 'han@example.com', password: 'lightsaber', password_confirmation: 'lightsaber')
@luke = User.create!(name: "Luke", username: "JustLuke", email: 'luke@example.com', password: 'lightsaber', password_confirmation: 'lightsaber')
@leia = User.create!(name: "Leia", username: "Princess", email: 'leia@example.com', password: 'lightsaber', password_confirmation: 'lightsaber')
@padme = User.create!(name: "Padme", username: "FashionQueen", email: 'padme@example.com', password: 'lightsaber', password_confirmation: 'lightsaber')
@anakin = User.create!(name: "Anakin", username: "Annie", email: 'anakin@example.com', password: 'lightsaber', password_confirmation: 'lightsaber')

["other", "unknown", "ASOS", "Abercrombie & Fitch", "Adidas", "All in Motion (Target)",
  "American Eagle", "Apt. 9", "BDG", "BELLA+CANVAS", "Billabong", "Birkenstock", "Brandy Melville", 
  "Burton", "Cactus Man", "Carbon", "Champion", "Chubbies", "Coach", "Comfort Colors", "Converse", "Crocs", 
  "Dickies", "Dr. Martens", "Eddie Bauer", "Fabletics", "Forever 21", 
  "Free People", "George", "Gildan", "Goodfellow", "Goodthreads", "Guess", "Gymshark", 
  "H&M", "Hollister", "Hot Topic", "Hurley", "J.Crew", "Jordans", "L.L.Bean", "Levi's", "Liquid Blue", 
  "Liz Claiborne", "Lululemon", "Mossimo Supply Co.", "Next Level", "Nike", "O'Neill", "Obey", "On the Byas", 
  "Pacsun", "Patagonia", "Pink Floyd", "Quiksilver", "RIPNDIP", "RVCA", "Reebok", "Ripcurl", "Saucony", 
  "Shein", "Skechers", "Sonoma", "Southern Tide", "Sperrys", "Tek Gear", "Topshop", "Torrid", "Under Armour", 
  "Urban Outfitters", "Vans", "Vineyard Vines", "Volcom", "Wild Fable", "Zara"].each do |a|
    Brand.create(name: a)
   end


@han.items.create!([{
  name: 'Main Outfit', stars: 5,
  description: %{Timeless, but also this really is Han's only outfit.}.squish,
  found_on: "2020-05-04",
  brand: 'unknown',  
  flair: 'no flair',
  size: "L"
}])

@luke.items.create!([{
  name: 'Dark Robes', stars: 4,
  description: %{Gloomy but such a cool look.}.squish,
  found_on: "2020-05-06",
  brand: 'unknown',
  flair: 'Bought',
  size: "M"
},
{
  name: 'Empire Battle Outfit', stars: 3,
  description: %{Looks comfy minus the collar!}.squish,
  found_on: "2020-05-05",
  brand: 'unknown',
  flair: 'Bought',
  size: "M"
},
{
  name: 'Main Chill Wear', stars: 5,
  description: %{The iconic Luke look!}.squish,
  found_on: "2020-05-04",
  brand: 'unknown',
  flair: 'User Favorite',
  size: "M"
},
{
  name: 'Pilot Outfit', stars: 5,
  description: %{Another iconic (and heroic!) look.}.squish,
  found_on: "2020-05-04",
  brand: 'unknown',
  flair: 'User Favorite',
  size: "M"
}, 
{
  name: 'Yavin ceremony outfit', stars: 3,
  description: %{Turning into a mini Han Solo here}.squish,
  found_on: "2020-05-04",
  brand: 'unknown',
  flair: 'no flair',
  size: "M"
}])

@leia.items.create!([{
  name: 'Senator Gown', stars: 5,
  description: %{The iconic look that started it all complete with buns.}.squish,
  found_on: "2020-05-04",
  brand: 'unknown',
  flair: 'User Favorite',
  size: "S"
},
{
  name: 'Slave Bikini', stars: 5,
  description: %{Showing off the costume in a more cheery setting.}.squish,
  found_on: "2020-05-06",
  brand: 'unknown',
  flair: 'User Favorite',
  size: "S"
},
{
  name: 'Endor Camo', stars: 2,
  description: %{A bit bland for a princess...}.squish,
  found_on: "2020-05-06",
  brand: 'unknown',
  flair: 'no flair',
  size: "M"
},
{
  name: 'Cloud City', stars: 4,
  description: %{Very casual and cozy}.squish,
  found_on: "2020-05-05",
  brand: 'unknown',
  flair: 'no flair',
  size: "S"
},
{
  name: 'Hoth Coat', stars: 2,
  description: %{Probaby not much warmer than Luke's.}.squish,
  found_on: "2020-05-05",
  brand: 'unknown',
  flair: 'no flair',
  size: "S"
}])

@padme.items.create!([{
  name: 'Negotiations with the Separatists Dress', stars: 5,
  description: %{Episode 1 iconic look.}.squish,
  found_on: "2020-05-01",
  brand: 'unknown',
  flair: 'User Favorite',
  size: "XL"
},
{
  name: 'Kimono Dress', stars: 3,
  description: %{The makeup is the best part somehow. Something feels a bit off.}.squish,
  found_on: "2020-05-01",
  brand: 'unknown',
  flair: 'no flair',
  size: "XL"
},
{
  name: 'Vote of No Confidence Dress', stars: 5,
  description: %{Another elegant look of the queen.}.squish,
  found_on: "2020-05-01",
  brand: 'unknown',
  flair: 'no flair',
  size: "XL"
},
{
  name: 'Indigo Dress', stars: 4,
  description: %{Dark color but Padme pulls it off!}.squish,
  found_on: "2020-05-02",
  brand: 'unknown',
  flair: 'no flair',
  size: "S"
},
{
  name: 'I Dont Like this Idea of Hiding', stars: 3,
  description: %{Lighter version of the indigo dress. All of her outfits really shine in Episode 2.}.squish,
  found_on: "2020-05-02",
  brand: 'unknown',
  flair: 'no flair',
  size: "S"
},
{
  name: 'Meadow Dress', stars: 5,
  description: %{Padme really can pull off any color. Iconic and beautiful!}.squish,
  found_on: "2020-05-02",
  brand: 'unknown',
  flair: 'User Favorite',
  size: "S"
},
{
  name: 'Fight Jumpsuit', stars: 3,
  description: %{Very bland for Padme, but she is not the main character here.}.squish,
  found_on: "2020-05-02",
  brand: 'unknown',
  flair: 'no flair',
  size: "S"
}])

@anakin.items.create!([{
  name: 'Main Moody Outfit', stars: 5,
  description: %{Bland, but somehow still unique and true to character. This is where the fun begins.}.squish,
  found_on: "2020-05-03",
  brand: 'unknown',
  flair: 'User Favorite',
  size: "L"
}])


#Complaint.create(name: "too big")

["too big", "too small", "too thin", "too thick", "felt cheap", "looks bad", "bad fit",
   "uncomfortable", "not me", "too expensive"].each do |a|
    Complaint.create(name: a)
   end

   [
    ['Main Outfit', "han-main.jpg"],
    ['Dark Robes', "luke-dark.jpg"],
    ['Empire Battle Outfit', "luke-empire.jpg"],
    ['Main Chill Wear', "luke-main.jpg"],
    ['Pilot Outfit', "luke-pilot.jpg"],
    ['Yavin ceremony outfit', "luke-yavin.jpg"],
    ['Senator Gown', "leia-main.jpg"],
    ['Slave Bikini', "leia-slave.jpg"],
    ['Endor Camo', "leia-endor.jpg"],
    ['Cloud City', "leia-bespin.jpg"],
    ['Hoth Coat', "leia-hoth.jpg"],
    ['Negotiations with the Separatists Dress', "padme-throne.jpg"],
    ['Kimono Dress', "padme-kimono.jpg"],
    ['Vote of No Confidence Dress', "padme-senate.jpg"],
    ['Indigo Dress', "padme-indigo.jpg"],
    ['I Dont Like this Idea of Hiding', "padme-gown-2.jpg"],
    ['Meadow Dress', "padme-meadow.jpg"],
    ['Fight Jumpsuit', "padme-fight.jpg"],
    ['Main Moody Outfit', "anakin-sith.jpg"]
  ].each do |item_title, file_name|
    item = Item.find_by!(name: item_title)
    file = File.open(Rails.root.join("app/assets/images/#{file_name}"))
    item.main_image.attach(io: file, filename: file_name)
  end


  
