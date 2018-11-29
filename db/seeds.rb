# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

# SEEDS -- Imports still mising
# cocktails_url = 'https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail'
# cocktails_serialized = open(cocktails_url).read
# cocktails = JSON.parse(cocktails_serialized)

# cocktails['drinks'].each do |drink|
#   Cocktail.create(name: drink["strDrink"])
# end

Cocktail.create(name: "Margarita")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Gin Tonic")
Cocktail.create(name: "Vodka Redbull")
Cocktail.create(name: "Banana Milkshake")
