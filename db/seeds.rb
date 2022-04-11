# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ****************** FLASHION SEEDS FILE *******************
@yoda = User.create!(
  name: "Yoda",
  username: "Yoda",
  email: 'yoda@example.com',
  password: 'lightsaber',
  password_confirmation: 'lightsaber')

  @yoda.items.create!([{
    name: 'Jedi Robes',
    stars: 5,
    description:
    %{
      Cool item this is!
    }.squish,
    found_on: "2021-02-26",
    brand: 'unknown',
    image_file_name: 'placeholder-2.png',
    flair: 'Sold',
    size: "XS"
  },
  {
    name: 'Jedi Robes 2',
    stars: 4,
    description:
    %{
      MMMmmmMM! for laundry day this robe is!
    }.squish,
    found_on: "2021-02-27",
    brand: 'unknown',
    image_file_name: 'placeholder-2.png',
    flair: 'Sold',
    size: "XS"
  }])

  @luke = User.create!(
    name: "Luke",
    username: "Luke",
    email: 'luke@example.com',
    password: 'lightsaber',
    password_confirmation: 'lightsaber')
  
    @luke.items.create!([{
      name: 'Jedi Robes!',
      stars: 5,
      description:
      %{
        These look great on me. Correct size this time.
      }.squish,
      found_on: "2020-05-05",
      brand: 'unknown',
      image_file_name: 'placeholder-2.png',
      flair: 'Bought',
      size: "M"
    },
    {
      name: 'Older Jedi Robes',
      stars: 5,
      description:
      %{
        I got rid of these years ago! Too small!
      }.squish,
      found_on: "2020-05-04",
      brand: 'unknown',
      image_file_name: 'placeholder-2.png',
      flair: 'Sold',
      size: "S"
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