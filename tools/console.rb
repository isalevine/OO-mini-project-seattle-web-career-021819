require_relative '../config/environment.rb'

ham_sandwich = Recipe.new("ham_sandwich")
grilled_cheese = Recipe.new("grilled_cheese")
butter_ham = Recipe.new("butter_ham")
pickle_cheese = Recipe.new("pickle_cheese")

ham = Ingredient.new("ham")
cheese = Ingredient.new("cheese")
butter = Ingredient.new("butter")
bread = Ingredient.new("bread")
pickle = Ingredient.new("pickle")
mustard = Ingredient.new("mustard")

add_ingredients_array = [pickle, mustard]

anthony = User.new("anthony")
barb = User.new("barb")
carl = User.new("carl")
pam = User.new("pam")

ham_sam_card = RecipeCard.new(8, anthony, ham_sandwich)
grilled_cheese_card = RecipeCard.new(4, barb, grilled_cheese)
ham_sam_card2 = RecipeCard.new(3, barb, ham_sandwich)



ham_sam_ingredients = RecipeIngredient.new(ham_sandwich, ham, bread, cheese)
grilled_cheese_ingredients = RecipeIngredient.new(grilled_cheese, bread, cheese, butter)
pickle_cheese_ingredients = RecipeIngredient.new(pickle, cheese)

barb_allergies = Allergen.new(barb)
carl_allergies = Allergen.new(carl, cheese, butter)

carl.add_recipe_card(9, butter_ham)

anthony.declare_allergen(bread)

ham_sandwich.add_ingredients(add_ingredients_array)

ham_1 = RecipeCard.new(1, pam, ham_sandwich)
butter_3 = RecipeCard.new(3, pam, butter_ham)
grilled_2 = RecipeCard.new(2, pam, grilled_cheese)
pickle_4 = RecipeCard.new(4, pam, pickle_cheese)



#test outputs
  # puts
  # puts "RecipeCard.all outputs:"
  # puts RecipeCard.all
  # puts

puts "RecipeIngredient.all outputs:"
puts RecipeIngredient.all

binding.pry
