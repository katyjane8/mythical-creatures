class Person
  attr_reader :stoned, :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def is_stoned
    @stoned = true
  end

end
