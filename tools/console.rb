require_relative '../config/environment.rb'

ham_sandwich = Recipe.new("ham_sandwich")
grilled_cheese = Recipe.new("grilled_cheese")
butter_ham = Recipe.new("butter_ham")

ham = Ingredient.new("ham")
cheese = Ingredient.new("cheese")
butter = Ingredient.new("butter")
bread = Ingredient.new("bread")

anthony = User.new("anthony")
barb = User.new("barb")
carl = User.new("carl")

ham_sam_card = RecipeCard.new(8, anthony, ham_sandwich)
grilled_cheese_card = RecipeCard.new(4, barb, grilled_cheese)

ham_sam_ingredients = RecipeIngredient.new(ham_sandwich, ham, bread, cheese)



barb_allergies = Allergen.new(barb)
carl_allergies = Allergen.new(carl, cheese, butter)



#test outputs
  # puts
  # puts "RecipeCard.all outputs:"
  # puts RecipeCard.all
  # puts

puts "RecipeIngredient.all outputs:"
puts RecipeIngredient.all

binding.pry
