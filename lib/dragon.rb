class Dragon

  attr_reader :name, :color, :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @counter = 0
  end

  def hungry?
    if @counter < 3
      true
    else
      false
    end 
  end

  def eat
    @counter += 1

  end

end
