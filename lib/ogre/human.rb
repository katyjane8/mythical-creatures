require_relative 'ogre'

class Human
  attr_reader :name
  attr_accessor :encounter_counter, :out_cold

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
    @out_cold = false
  end

  def notices_ogre?
    (@encounter_counter % 3) == 0
  end

  def knocked_out?
    @out_cold
  end

end
