require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestBear < Minitest::Test

  def setup
    @fish1 = Fish.new("nemo")
    @fish2 = Fish.new("goldie")
    @fish3 = Fish.new("bella")
    @fish4 = Fish.new("dory")
    fish_array = [@fish1,@fish2]
    fish_array2 = [@fish3, @fish4]
    @river1 = River.new("Forth", fish_array2)
    @bear1 = Bear.new("Baloo", "Grizzly")
    @bear2 = Bear.new("Gentle Ben", "Black Bear", fish_array)
  end

  def test_bear_name
    assert_equal("Baloo", @bear1.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear1.type)
  end

  def test_bear_stomach__empty
    assert_equal([], @bear1.stomach)
  end

  def test_bear_stomach__has_fish
    assert_equal(2, @bear2.stomach.count)
  end

  def test_bear_takes_fish
    @bear1.bear_takes_fish(@river1)
    assert_equal(1, @bear1.stomach.count)
  end

  def test_bear_roar
    assert_equal("Roooaarrr!", @bear1.bear_roar)
  end

  def test_bear_food_count
    assert_equal(2, @bear2.stomach.count)
  end


end
