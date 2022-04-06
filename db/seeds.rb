# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ****************** FLASHION SEEDS FILE *******************
Item.create!([
  {
    name: 'levi denim jacket',
    stars: 5,
    description:
    %{
      If I were to buy a denim jacket, it'd be this one.
    }.squish,
    found_on: "2021-02-26",
    brand: 'Levi',
    image_file_name: 'denim-jacket.JPG',
    flair: 'Sold',
    size: "M"
  },
  {
    name: 'yellow hat',
    stars: 3,
    description:
    %{
      too tight but neat looking.
    }.squish,
    found_on: "2022-04-04",
    brand: 'Unknown',
    image_file_name: 'yellow-hat.JPG',
    flair: 'Bought',
    size: "One Size"
  },
  {
    name: 'summer tank',
    stars: 3,
    description:
    %{
      Too big but it looked so good. Arm holes were too big too.
    }.squish,
    found_on: "2022-03-26",
    brand: 'Unknown',
    image_file_name: 'summer-tank.JPG',
    flair: 'Favorite',
    size: "M"
  },
  {
    name: 'butterfly t-shirt',
    stars: 2,
    description:
    %{
      cool looking but not very comfy.
    }.squish,
    found_on: "2022-03-23",
    brand: 'Unknown',
    image_file_name: 'butterfly-tee.JPG',
    size: "S"
  },
  {
    name: 'shein checker shirt',
    stars: 3,
    description:
    %{
      edgy but also very comfy.
    }.squish,
    found_on: "2022-03-23",
    brand: 'Shein',
    image_file_name: 'checker-shirt.JPG',
    size: "S"
  },
  {
    name: 'funky sweater hoodie',
    stars: 3,
    description:
    %{
      This thing was way too big but it looks cool.
    }.squish,
    found_on: "2021-02-27",
    brand: 'Unknown',
    image_file_name: 'hoodie-1.JPG',
    size: "L"
  }
])
