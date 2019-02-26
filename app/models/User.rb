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


  def top_three_recipes
    rating_hash = {}
    final_output = []
    RecipeCard.all.each do |card_instance|
      rating_hash[card_instance.recipe.name.to_s] = card_instance.rating
    end
    recipe_array = rating_hash.max_by do |key, value|
      value
    end
     recipe_array2 = rating_hash.sort_by do |recipe_name_string, rating|
        rating
      end
      recipe_array3 = recipe_array2.last(3).map do |pair_array|
        pair_array[0]
      end
          recipe_array3.each do |recipe_name_string|
            Recipe.all.each do |recipe_instance|
              if recipe_instance.name == recipe_name_string
                final_output << recipe_instance
              end
            end
          end
          final_output
  end


  def most_recent_recipe
    date_hash = {}
    final_output = []
    RecipeCard.all.each do |card_instance|
      date_hash[card_instance.recipe.name.to_s] = card_instance.date
    end
    recipe_array = date_hash.max_by do |key, value|
      value
    end
     recipe_array2 = date_hash.sort_by do |recipe_name_string, date|
        date
      end
      recipe_array3 = recipe_array2.last(1).map do |pair_array|
        pair_array[0]
      end
          recipe_array3.each do |recipe_name_string|
            Recipe.all.each do |recipe_instance|
              if recipe_instance.name == recipe_name_string
                final_output << recipe_instance
              end
            end
          end
          final_output
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
