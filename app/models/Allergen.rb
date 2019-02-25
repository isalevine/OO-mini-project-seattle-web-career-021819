class Allergen
  attr_reader :user, :ingredient

  @@all = []

  def initialize(user_instance, *ingredient_instance_array)
    @user = user_instance
    @ingredient = ingredient_instance_array
    @@all << self
  end

  def self.all
    @@all
  end








end
