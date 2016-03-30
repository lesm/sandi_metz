class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(args)
    @chainring = args.fetch(:chainring, 40)
    @cog       = args.fetch(:cog, 16)
    @wheel     = args[:wheel]
  end

  def gear_inches
    ratio * @wheel.diameter
  end

  def ratio
    chainring / cog.to_f
  end

end
