class RecipeCard
  attr_reader :date, :rating, :user, :recipe

  @@all = []

  # rating scale: 1 to 10
  def initialize(rating, user, recipe, date=Time.now)
    @date = date
    @rating = rating
    @user = user
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end




end
