class Pantry
  attr_reader :stock

  def initialize()
    @stock = Hash.new(0)
  end

  def stock_check(ingredient_obj)
    if @stock == {}
      0
    else
      @stock.values[0]
    end
  end

  def restock(ingredient_obj, stock_amt)
    @stock[ingredient_obj] += stock_amt
  end

  def enough_ingredients_for?(recipe)
    require "pry"; binding.pry
  end
end
