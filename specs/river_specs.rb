require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestRiver < Minitest::Test

  def setup
    @fish1 = Fish.new("nemo")
    @fish2 = Fish.new("goldie")
    fish_array = [@fish1,@fish2]
    @river1 = River.new("Forth", fish_array)
    @river2 = River.new("Clyde")
  end

  def test_river_name
    assert_equal("Forth", @river1.name)
  end


  def test_fish_in_river__empty
    assert_equal([], @river2.fish_in_river)
  end

  def test_fish_in_river__has_fish
    assert_equal(2, @river1.fish_in_river.count)
  end

end
