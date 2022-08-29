require 'factory_bot_rails'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 10.times do |x|
#     Ad.create(title: Faker::Lorem.paragraph(sentence_count: 1),
#         category: "voiture",
#         state: "Etat neuf",
#         #images: Faker::LoremFlickr.unique.image,
#         description: Faker::Lorem.paragraph(sentence_count: 20),
#         price: Faker::Number.number(digits: 3),
#         city: "Paris", # "Faker::Address.fr_city,
#         shipment: "Livraison",
#         user_id: 10
#     )
# end

10.times do
    FactoryBot.create :ad
end