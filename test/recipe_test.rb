require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'

class RecipeTest < Minitest::Test


end
# pry(main)> ingredient1 = Ingredient.new("Cheese", "C", 100)
# # => #<Ingredient:0x007fe8438c7a70...>
#
# pry(main)> ingredient2 = Ingredient.new("Macaroni", "oz", 30)
# # => #<Ingredient:0x007fe843857f40...>
#
# pry(main)> recipe = Recipe.new("Mac and Cheese")
# # => #<Recipe:0x007fe84383d000...>
#
# pry(main)> recipe.name
# # => "Mac and Cheese"
#
# pry(main)> recipe.ingredients_required
# # => {}
#
# pry(main)> recipe.add_ingredient(ingredient1, 2)
#
# pry(main)> recipe.add_ingredient(ingredient2, 8)
#
# pry(main)> recipe.ingredients_required
# # => {#<Ingredient:0x00007fd7811553c8...> => 2, #<Ingredient:0x00007fd78110b0e8...> => 8}
#
# pry(main)> recipe.amount_required(ingredient1)
# # => 2
#
# pry(main)> recipe.amount_required(ingredient2)
# # => 8
#
# pry(main)> recipe.ingredients
# # => [#<Ingredient:0x007fe8438c7a70...>, #<Ingredient:0x007fe843857f40...>]
#
# pry(main)> recipe.total_calories
# # => 440
