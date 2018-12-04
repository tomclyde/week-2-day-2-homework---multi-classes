class River

  attr_reader :name, :fish_in_river

  def initialize(name, fish_in_river = [])
    @name = name
    @fish_in_river = fish_in_river
  end

  def remove_fish_from_river
    @fish_in_river.pop
  end

  def river_fish_count
    return @fish_in_river.count
  end

  

end
