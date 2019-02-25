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
    self.ingredients.each do |ingredient_instance|
      Allergen.all.each do |allergen_instance|
        if allergen_instance.ingredient.include?(ingredient_instance)
          allergy_list << ingredient_instance
        end
      end
    end
    allergy_list
 end




end
