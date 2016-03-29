require 'gear'
require 'wheel'

RSpec.describe Gear do
  
  describe "#Initialize" do
    it 'Create instance with chainring, cog, wheel' do
      wheel = Wheel.new(26,1.5)
      @gear = Gear.new(52,11,wheel)
      expect(@gear.chainring).to eq 52 
      expect(@gear.cog).to eq 11 
      expect(@gear.wheel.rim).to eq 26 
      expect(@gear.wheel.tire).to eq 1.5 
    end
  end

  describe '#ratio' do
    let(:wheel) { Wheel.new(0,0) } 
    it 'when chainring is 52 and cog is 11 the ratio is 4.7' do
      @gear = Gear.new(52,11,wheel)
      expect(@gear.ratio.round(1)).to eq 4.7
    end

    it 'when chainring is 30 and cog is 27 the ratio is 1.1' do
      @gear = Gear.new(30,27,wheel)
      expect(@gear.ratio.round(1)).to eq 1.1
    end
  end

  describe '#gear_inches' do
    it 'when attibutes is (52,11,Wheel.new(26,1.5)) the gear_inches is 137.09' do
      wheel = Wheel.new(26,1.5)
      @gear = Gear.new(52,11,wheel)
      expect(("%.2f" %  @gear.gear_inches).to_f).to eq 137.09 
    end

    it 'when attibutes is (52,11,Wheel.new(24,1.25)) the gear_inches is 125.27' do
      wheel = Wheel.new(24,1.25)
      @gear = Gear.new(52,11,wheel)
      expect(("%.2f" %  @gear.gear_inches).to_f).to eq 125.27 
    end
  end

end
