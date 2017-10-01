class Centaur
  attr_reader :name, :breed

  def initialize(name,breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @count = 0
    @rested = true 
    @sick = false
  end

  def shoot
    if cranky?
      "NO!"
    else
      @count += 1
      "Twang!!!"
    end
  end

  def run
    if cranky?
      "NO!"
    else
      @count += 1
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    @cranky = true if @count >= 3
    @cranky
  end

  def standing?
    @standing
  end

  def sleep
    @count = 0
    @cranky = false
    "NO!" if standing?
  end

  def lay_down
    @standing = false
    @laying = true
    @cranky = true
  end

  def laying?
    @laying
  end

  def stand_up
    @standing = true
  end

  def drink
    @rested = true

  end

  def rested?
    @rested
  end

  def sick?
    @sick = true if rested?
  end

end
