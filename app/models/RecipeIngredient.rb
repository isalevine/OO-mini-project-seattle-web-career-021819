class RecipeIngredient
  attr_reader :recipe, :ingredient

  @@all = []

  # may need to change Ingredient input - pull LIST of ingredients, instead of just one??
  def initialize(recipe_instance, *all_ingredients_array)
    @recipe = recipe_instance
    @ingredient = all_ingredients_array
    @@all << self
  end

  def self.all
    @@all
  end





end
