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
    @ingredients_required.each do |ingredient|
      amount += ingredient[1] if ingredient_obj == ingredient[0]
    end
    amount
  end

  def ingredients
    all_ingredients = []
    @ingredients_required.each do |ingredient|
      all_ingredients << ingredient[0]
    end
    all_ingredients
  end

  def total_calories

  end
end
