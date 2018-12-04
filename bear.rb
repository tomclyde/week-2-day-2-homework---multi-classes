class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type, stomach=[])
    @name = name
    @type = type
    @stomach = stomach
  end

  def bear_takes_fish(river)
    fish_eaten = river.fish_in_river[-1]
    @stomach.push(fish_eaten)
  end

end
