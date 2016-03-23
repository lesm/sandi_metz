require 'revealing_references'

RSpec.describe RevealingReferences do 
  describe '#Initialize' do
    it 'Create instance with two-dimensional array' do
      wheels = [[500,20],[400,30],[600,40]]
      @revealing_references = RevealingReferences.new(wheels)
      expect(@revealing_references.wheels).to include([500,20],[400,30],[600,40]) 
    end
  end
end
