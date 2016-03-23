require 'gear'

RSpec.describe Gear do
  
  describe "#Initialize" do
    it 'create new instance with two attributes' do
      @gear = Gear.new(52,11)
      expect(@gear.chainring).to eq 52 
      expect(@gear.cog).to eq 11 
    end
  end

  describe '#ratio' do
    it 'when chainring is 52 and cog is 11 the ratio is 4.7' do
      @gear = Gear.new(52,11)
      expect(@gear.ratio.round(1)).to eq 4.7
    end

    it 'when chainring is 30 and cog is 27 the ratio is 1.1' do
      @gear = Gear.new(30,27)
      expect(@gear.ratio.round(1)).to eq 1.1
    end
  end

end
