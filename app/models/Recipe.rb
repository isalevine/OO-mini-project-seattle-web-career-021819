class Recipe
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def users
    user_list = []
    RecipeCard.all.each do |card_instance|
      if card_instance.recipe.name == self.name
        user_list << card_instance.user
      end
    end
    user_list
  end

  def ingredients
    ingredient_list = []
    RecipeIngredient.all.each do |ingredient_instance|
      if ingredient_instance.recipe.name == self.name
        ingredient_list << ingredient_instance.ingredient
      end
    end
    ingredient_list
  end

  def allergens
    allergy_list = []
    RecipeIngredient.all.each do |recing_instance|
      recing_instance.ingredient.each do |ingredient_instance|
        Allergen.all.each do |allergen_instance|
          if allergen_instance.ingredient.include?(ingredient_instance)
            allergy_list << ingredient_instance.name
          end
        end
      end
    end
    allergy_list.uniq
 end


 def add_ingredients(ingredient_array)
   RecipeIngredient.all.each do |recing_instance|
     if recing_instance.recipe == self
       recing_instance.ingredient.concat ingredient_array
     end
   end
 end


def self.most_popular
  counter_hash = {}
  RecipeCard.all.each do |card_instance|
    counter_hash[card_instance.recipe.name.to_s] = 0
  end
  RecipeCard.all.each do |card_instance|
    counter_hash[card_instance.recipe.name.to_s] += 1
  end
  recipe_array = counter_hash.max_by do |key, value|
    value
  end
  final_output = self.all.find do |recipe_instance|
    recipe_instance.name == recipe_array[0]
  end
  final_output
end








end
