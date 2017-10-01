require_relative 'human'

class Ogre
  attr_reader :name, :home, :encounter, :encounter_counter

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @encounters = []
    @encounter_counter = 0
  end

  def encounter(human)
    @encounters << human
    human.encounter_counter += 1
    @encounter_counter += 1
  end

end
