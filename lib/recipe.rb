class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient_name, ingredient_amount)
    @ingredients_required[ingredient_name] = ingredient_amount
  end

  def amount_required(ingredient_obj)
    amount = 0
    @ingredients_required.each { |ingredient| amount += ingredient[1] if ingredient_obj == ingredient[0] }
    amount
  end

  def ingredients
    @ingredients_required.map { |ingredient| ingredient[0] }
  end

  def total_calories
    total_calories = 0
    @ingredients_required.each { |ingredient| total_calories += (ingredient[0].calories * ingredient[1]) }
    total_calories
  end
end
