class Pirate

  attr_reader :name, :job

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @counter = 0
    @booty = 0
  end

  def cursed?
    if @counter > 2
      true
    else
      false
    end
  end

  def commit_heinous_act
    @counter += 1
  end

  def rob_ship
    @booty += 100
    true
  end

  def booty
    @booty
  end

end
