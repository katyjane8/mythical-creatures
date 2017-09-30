require './lib/medusa/person'
require 'pry'

class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    @statues << victim
    victim.is_stoned
  end

  def victim_limit
    @statues.count
    @statues[0].is_unstoned
    @statues = @statues[0..2]
  end

end
