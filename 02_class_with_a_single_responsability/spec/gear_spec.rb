require 'gear'

RSpec.describe Gear do
  describe "#Initialize" do
    it 'create new instance with two attributes' do
      @gear = Gear.new(52,11)
      expect(@gear.chainring).to eq 52 
      expect(@gear.cog).to eq 11 
    end
  end
end
