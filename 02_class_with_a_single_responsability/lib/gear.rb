class Gear

  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tire      = tire 
  end

  def ratio
    chainring / cog.to_f
  end

end
