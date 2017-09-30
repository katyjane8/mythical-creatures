class Person
  attr_reader :name, :stoned

  def initialize(name, stoned = false)
    @name = name
    @stoned = stoned
  end

  def stoned?
    if @stoned == false
      @stoned = false
    else
      @stoned = true
    end
  end

end
