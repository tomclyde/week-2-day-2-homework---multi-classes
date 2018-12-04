require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestBear < Minitest::Test

  def setup
    @fish1 = Fish.new("nemo")
    @fish2 = Fish.new("goldie")
    fish_array = [@fish1,@fish2]
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

end
