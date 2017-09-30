require '../lib/person'

class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    @statues << victim
  end

  def stoned
    if stare(victim)
      @stoned == true
    else
      false
    end
  end
  
end
