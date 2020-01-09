require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'

class RecipeTest < Minitest::Test

  def setup
    @ingredient1 = Ingredient.new("Cheese", "C", 100)
    @ingredient2 = Ingredient.new("Macaroni", "oz", 30)

    @recipe = Recipe.new("Mac and Cheese")
  end

  def test_it_exists
    assert_instance_of Ingredient, @ingredient1
    assert_instance_of Ingredient, @ingredient2
    assert_instance_of Recipe, @recipe
  end

  def test_it_has_attributes
    assert_equal "Mac and Cheese", @recipe.name
    assert_equal Hash.new, @recipe.ingredients_required
  end

  def test_it_can_add_ingredients
    @recipe.add_ingredient(@ingredient1, 2)
    @recipe.add_ingredient(@ingredient2, 8)
    expected = {@ingredient1 => 2, @ingredient2 => 8}

    assert_equal expected, @recipe.ingredients_required
  end


end


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
