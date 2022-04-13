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

@han.items.create!([{
  name: 'Main Outfit', stars: 5,
  description: %{Timeless, but also this really is Han's only outfit.}.squish,
  found_on: "2020-05-04",
  brand: 'unknown',
  image_file_name: 'han-main.jpg',
  flair: 'no flair',
  size: "L"
}])

@luke.items.create!([{
  name: 'Dark Robes', stars: 4,
  description: %{Gloomy but such a cool look.}.squish,
  found_on: "2020-05-06",
  brand: 'unknown',
  image_file_name: 'luke-dark.jpg',
  flair: 'Bought',
  size: "M"
},
{
  name: 'Empire Battle Outfit', stars: 3,
  description: %{Looks comfy minus the collar!}.squish,
  found_on: "2020-05-05",
  brand: 'unknown',
  image_file_name: 'luke-empire.jpg',
  flair: 'Bought',
  size: "M"
},
{
  name: 'Main Chill Wear', stars: 5,
  description: %{The iconic Luke look!}.squish,
  found_on: "2020-05-04",
  brand: 'unknown',
  image_file_name: 'luke-main.jpg',
  flair: 'Favorite',
  size: "M"
},
{
  name: 'Pilot Outfit', stars: 5,
  description: %{Another iconic (and heroic!) look.}.squish,
  found_on: "2020-05-04",
  brand: 'unknown',
  image_file_name: 'luke-pilot.jpg',
  flair: 'Favorite',
  size: "M"
}, 
{
  name: 'Yavin ceremony outfit', stars: 3,
  description: %{Turning into a mini Han Solo here}.squish,
  found_on: "2020-05-04",
  brand: 'unknown',
  image_file_name: 'luke-yavin.jpg',
  flair: 'no flair',
  size: "M"
}])

@leia.items.create!([{
  name: 'Senator Gown', stars: 5,
  description: %{The iconic look that started it all complete with buns.}.squish,
  found_on: "2020-05-04",
  brand: 'unknown',
  image_file_name: 'leia-main.jpg',
  flair: 'Favorite',
  size: "S"
},
{
  name: 'Slave Bikini', stars: 5,
  description: %{Showing off the costume in a more cheery setting.}.squish,
  found_on: "2020-05-06",
  brand: 'unknown',
  image_file_name: 'leia-slave.jpg',
  flair: 'Favorite',
  size: "S"
},
{
  name: 'Endor Camo', stars: 2,
  description: %{A bit bland for a princess...}.squish,
  found_on: "2020-05-06",
  brand: 'unknown',
  image_file_name: 'leia-endor.jpg',
  flair: 'no flair',
  size: "M"
},
{
  name: 'Cloud City', stars: 4,
  description: %{Very casual and cozy}.squish,
  found_on: "2020-05-05",
  brand: 'unknown',
  image_file_name: 'leia-bespin.jpg',
  flair: 'no flair',
  size: "S"
},
{
  name: 'Hoth Coat', stars: 2,
  description: %{Probaby not much warmer than Luke's.}.squish,
  found_on: "2020-05-05",
  brand: 'unknown',
  image_file_name: 'leia-hoth.jpg',
  flair: 'no flair',
  size: "S"
}])

@padme.items.create!([{
  name: 'Negotiations with the Separatists Dress', stars: 5,
  description: %{Episode 1 iconic look.}.squish,
  found_on: "2020-05-01",
  brand: 'unknown',
  image_file_name: 'padme-throne.jpg',
  flair: 'Favorite',
  size: "XL"
},
{
  name: 'Kimono Dress', stars: 3,
  description: %{The makeup is the best part somehow. Something feels a bit off.}.squish,
  found_on: "2020-05-01",
  brand: 'unknown',
  image_file_name: 'padme-kimono.jpg',
  flair: 'no flair',
  size: "XL"
},
{
  name: 'Vote of No Confidence Dress', stars: 5,
  description: %{Another elegant look of the queen.}.squish,
  found_on: "2020-05-01",
  brand: 'unknown',
  image_file_name: 'padme-senate.jpg',
  flair: 'no flair',
  size: "XL"
},
{
  name: 'Indigo Dress', stars: 4,
  description: %{Dark color but Padme pulls it off!}.squish,
  found_on: "2020-05-02",
  brand: 'unknown',
  image_file_name: 'padme-indigo.jpg',
  flair: 'no flair',
  size: "S"
},
{
  name: 'I Dont Like this Idea of Hiding', stars: 3,
  description: %{Lighter version of the indigo dress. All of her outfits really shine in Episode 2.}.squish,
  found_on: "2020-05-02",
  brand: 'unknown',
  image_file_name: 'padme-gown-2.jpg',
  flair: 'no flair',
  size: "S"
},
{
  name: 'Meadow Dress', stars: 5,
  description: %{Padme really can pull off any color. Iconic and beautiful!}.squish,
  found_on: "2020-05-02",
  brand: 'unknown',
  image_file_name: 'padme-meadow.jpg',
  flair: 'Favorite',
  size: "S"
},
{
  name: 'Fight Jumpsuit', stars: 3,
  description: %{Very bland for Padme, but she is not the main character here.}.squish,
  found_on: "2020-05-02",
  brand: 'unknown',
  image_file_name: 'padme-fight.jpg',
  flair: 'no flair',
  size: "S"
}])

@anakin.items.create!([{
  name: 'Main Moody Outfit', stars: 5,
  description: %{Bland, but somehow still unique and true to character. This is where the fun begins.}.squish,
  found_on: "2020-05-03",
  brand: 'unknown',
  image_file_name: 'anakin-sith.jpg',
  flair: 'Favorite',
  size: "L"
}])


Complaint.create(name: "too big")
Complaint.create(name: "too small")
Complaint.create(name: "too thin")
Complaint.create(name: "too thick")
Complaint.create(name: "felt cheap")
Complaint.create(name: "looks bad")
Complaint.create(name: "bad fit")
Complaint.create(name: "uncomfortable")
Complaint.create(name: "not me")
Complaint.create(name: "too expensive")