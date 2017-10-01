require_relative 'ogre'

class Human
  attr_reader :name
  attr_accessor :encounter_counter

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
  end

  def notices_ogre?
    (@encounter_counter % 3) == 0
  end
end
