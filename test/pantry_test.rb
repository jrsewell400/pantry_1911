require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require './lib/pantry'


class RecipeTest < Minitest::Test

  def setup
    @pantry = Pantry.new
    @ingredient1 = Ingredient.new("Cheese", "C", 50)
    @ingredient2 = Ingredient.new("Macaroni", "oz", 200)
    @recipe = Recipe.new("Mac and Cheese")
    @recipe.add_ingredient(@ingredient1, 2)
    @recipe.add_ingredient(@ingredient2, 8)
  end

  def test_it_exists
    assert_instance_of Pantry, @pantry
    assert_instance_of Ingredient, @ingredient1
    assert_instance_of Ingredient, @ingredient2
    assert_instance_of Recipe, @recipe
  end

  def test_it_has_attributes
    assert_equal Hash.new(0), @pantry.stock
  end

  def test_stock_check_starts_at_zero
    assert_equal 0, @pantry.stock_check(@ingredient1)
  end

  def test_it_can_be_restocked
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)

    assert_equal 15, @pantry.stock_check(@ingredient1)
  end

  def test_enough_ingredients_for_starts_false
    refute @pantry.enough_ingredients_for?(@recipe)
  end

  def test_it_can_test_for_enough_ingredients
    skip
    @pantry.restock(@ingredient2, 7)
    @pantry.restock(@ingredient2, 1)

    assert @pantry.enough_ingredients_for?(@recipe)
  end
end
