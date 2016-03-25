require 'revealing_references'

RSpec.describe RevealingReferences do 
  let(:Wheel) { Struct.new(:rim,:tire) }
  describe '#Initialize' do
    it 'Create instance with two-dimensional array' do
      wheel = Wheel.new(500,20)
      wheels = [[500,20]]
      @revealing_references = RevealingReferences.new(wheels)
      expect(@revealing_references.wheels.first.rim).to eq(wheel.rim) 
      expect(@revealing_references.wheels.first.tire).to eq(wheel.tire) 
    end
  end

  describe '#diameters' do
    it 'When receive [[622,20]] , return [662]' do
      wheels = [[622,20]]
      revealing_references = RevealingReferences.new(wheels)
      diameters = revealing_references.diameters
      expect(diameters).to include(662) 
    end
    
    it 'When receive [[622,20],[622,23]] , return [662,668]' do
      wheels = [[622,20],[622,23]]
      revealing_references = RevealingReferences.new(wheels)
      diameters = revealing_references.diameters
      expect(diameters).to include(662,668) 
    end
  end

end
