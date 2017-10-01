require_relative 'human'

class Ogre
  attr_reader :name, :home, :encounter, :encounter_counter, :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @encounters = []
    @encounter_counter = 0
    @swings = 0
  end

  def encounter(human)
    @encounters << human
    human.encounter_counter += 1
    @encounter_counter += 1
    @swings += 1 if human.notices_ogre?
    human.out_cold = true if ((@swings % 2) == 0)
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    !human.out_cold
  end

end
