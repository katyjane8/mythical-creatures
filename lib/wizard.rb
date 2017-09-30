class Wizard
  attr_reader :name, :bearded

  def initialize(name, bearded = true, rested = true)
    @name = name
    @bearded = bearded
    @rested = rested
    @count = 0
  end

  def bearded?
    if @bearded == {:bearded=>false}
      @bearded = false
    else
      @bearded = true
    end
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    @rested
  end

  def cast
    @count +=1
    if @count >2
      @rested = false
    end
    "MAGIC MISSILE!"
  end

end
