require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < Minitest::Test

end

# pry(main)> ingredient = Ingredient.new("Cheese", "oz", 50)
# # => #<Ingredient:0x007fe6041273d8...>
#
# pry(main)> ingredient.name
# # => "Cheese"
#
# pry(main)> ingredient.unit
# # => "oz"
#
# pry(main)> ingredient.calories
# # => 50
