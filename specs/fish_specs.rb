require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestFish < Minitest::Test

  def setup
    @fish1 = Fish.new("nemo")
    @fish2 = Fish.new("goldie")
  end

  def test_fish_name
    assert_equal("nemo", @fish1.name)
  end


end
