# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
CATEGORIES = ['chinese', 'japanese', 'italian', 'french', 'belgian']
RATINGS = [1, 2, 3, 4, 5]

15.times do
  restaurant = Restaurant.create(name: Faker::Restaurant.name, address:Faker::Address.city, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: CATEGORIES.sample)
  5.times do
    Review.create(rating: RATINGS.sample, content: Faker::Restaurant.review, restaurant: restaurant)
  end
end
