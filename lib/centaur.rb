class Centaur
  attr_reader :name, :breed

  def initialize(name,breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @count = 0
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
  end

  def standing?
    @standing
  end

end
