class RevealingReferences
  attr_reader :wheels
  def initialize(data)
    @wheels = wheelify(data)
  end  

  Wheel = Struct.new(:rim,:tire)
  def wheelify(data)
    data.collect { |cell| Wheel.new(cell[0],cell[1]) }
  end
end