require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def test_redefine_name_true
    # arrange
    rocket = Rocket.new(name: "nasarocket")

    # act
    rocket.name="superrocket"

    # assert
    assert_equal("superrocket", rocket.name)
  end


  def test_redefine_color_true
    rocket = Rocket.new(colour: "blue")

    # act
    rocket.colour= "red"

    # assert
    assert_equal("red", rocket.colour)
  end

  def test_lift_off_is_true
    # arrange
    rocket = Rocket.new
    flying = true

    # act
    result = rocket.lift_off

    # assert
    assert_equal(result, true)
  end

  def test_rocket_landed_true
    # arrange
    rocket = Rocket.new
    flying = false

    # act
    result = rocket.land

    # assert
    assert_equal(result, false)
  end

  def test_status_of_rocket_if_flying()
    # arrange
    rocket = Rocket.new(name: "nasarocket")
    rocket.lift_off

    # act
    result = rocket.status

    # assert
    assert_equal(result, "Rocket nasarocket is flying through the sky!")
  end

  def test_status_of_rocket_if_landed
    # arrange
    rocket = Rocket.new(name: "nasarocket")
    rocket.land

    # act
    result = rocket.status

    # assert
    assert_equal(result, "Rocket nasarocket is ready for lift off!")
  end

  def test_random_name_returns_prefix_and_suffix
    # arrange
    rocket = Rocket.new
    rocket.random_name


    # act
    result = rocket.random_name

    # assert
    assert_equal(result, "#{prefixes.sample}" "#{suffixes.sample}" )
  end

end




# def test_restaurant_is_invalid_without_name
#     # arrange
#     @restaurant = Restaurant.new(opening_hour: 10, closing_hour: 23, address: "220 king st west, toronto")
#
#     # act
#     result = @restaurant.valid?
#
#     # assert
#     assert_equal(result, false)
#   end
#
#   def test_restaurant_is_invalid_without_address
#     @restaurant = Restaurant.new(opening_hour: 10, closing_hour: 23, name: "Chez Bitmaker")
#
#     result = @restaurant.valid?
#
#     assert_equal(result, false)
#   end
#
#   def test_restaurant_is_invalid_without_opening_hour
#     # arrange
#     @restaurant = Restaurant.new(closing_hour: 23, name: "Chez Bitmaker", address: "123 King")
#
#     # act
#     is_restaurant_valid = @restaurant.valid?
#
#     # assert
#     assert_equal(is_restaurant_valid, false)
#   end
