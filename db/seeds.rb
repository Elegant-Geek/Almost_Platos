# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ****************** FLASHION SEEDS FILE *******************
User.create(
  name: "Yoda",
  username: "Yoda",
  email: 'yoda@example.com',
  password: 'lightsaber',
  password_confirmation: 'lightsaber'
)

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