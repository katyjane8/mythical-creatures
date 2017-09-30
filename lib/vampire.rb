class Vampire

  attr_reader :name, :pet

  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @counter = 0
  end

  def thirsty?
    if @counter < 1
      true
    else
      false
    end
  end

  def drink
    @counter += 1
  end

end
