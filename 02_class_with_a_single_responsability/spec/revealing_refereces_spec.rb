require 'revealing_references'

RSpec.describe RevealingReferences do 
  describe '#Initialize' do
    it 'Create instance with two-dimensional array' do
      Wheel = Struct.new(:rim,:tire)
      wheel = Wheel.new(500,20)
      wheels = [[500,20]]
      @revealing_references = RevealingReferences.new(wheels)
      expect(@revealing_references.wheels.first.rim).to eq(wheel.rim) 
      expect(@revealing_references.wheels.first.tire).to eq(wheel.tire) 
    end
  end
end
