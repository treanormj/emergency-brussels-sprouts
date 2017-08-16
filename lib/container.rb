
class Container
  attr_reader :weight, :maximum_holding_weight
  attr_accessor :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    total = (maximum_holding_weight / ingredient.weight).to_i
    @weight = maximum_holding_weight + weight
    total.times {@ingredients << ingredient}
  end

  def which_ingredient
    @ingredients[0].name
  end

  def how_many_ingredients
    @ingredients.size

  end

  def remove_one_ingredient
    food = self.how_many_ingredients - 1
    food.to_i
  end

  def empty
    @ingredients.clear
  end
end
