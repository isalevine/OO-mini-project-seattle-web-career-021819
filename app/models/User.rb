class User
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    recipe_list = []
    RecipeCard.all.each do |card_instance|
      if card_instance.user == self
        recipe_list << card_instance.recipe
      end
    end
    recipe_list
  end

  def add_recipe_card(rating, recipe_instance)
    RecipeCard.new(rating, self, recipe_instance)
  end

  def declare_allergen(ingredient_instance)
    Allergen.new(self, ingredient_instance)
  end

  def allergens
    ingredient_list = []
    Allergen.all.each do |allergen_instance|
      if allergen_instance.user == self
        ingredient_list << allergen_instance.ingredient
      end
    end
    ingredient_list
  end
# def safe_recipes
#   list_of_safe_recipes = []
#   allergen_list = Allergen.all.find_all do |allergen_instance|
#     allergen_instance.user == self
#   end
#   allergen_list
#   RecipeIngredient.all.each do |recipe_instance|
#     recipe_instance.ingredient.each do |ingredient_instance|
#       if !allergen_list.include?(ingredient_instance)
#         list_of_safe_recipes << recipe_instance
#       end
#     end
#   list_of_safe_recipes
#   end
# end





end
