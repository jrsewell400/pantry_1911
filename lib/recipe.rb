class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient_name, ingredient_amount)
    @ingredients_required[ingredient_name] = ingredient_amount
    require "pry"; binding.pry
  end


end
