class Werewolf
  attr_reader :name, :location, :eaten

  def initialize(name, location = "London")
    @name = name
    @location = location
    @count = 0
    @eaten = []
  end

  def human?
    @count == 0 || @count.even?
  end

  def change!
    @count += 1
  end

  def wolf?
    @count.odd?
  end

  def hungry?
    wolf? && @eaten == []
  end

  def consumes(victim)
    if wolf?
      @eaten << victim
    else
      @eaten
    end 
  end

end
