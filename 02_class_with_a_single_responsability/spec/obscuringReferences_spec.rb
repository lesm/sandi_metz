require 'obscuring_references'

RSpec.describe ObscuringReferences do 
  describe '#Initialize' do
    it 'Create new instance with a two-dimensional array' do
      data = [[622,20],[622,23],[559,30],[559,40]]
      @obscurin_references = ObscuringReferences.new(data)

      expect(@obscurin_references.data).to include([622,20],[559,30])  
    end
  end
  describe '#diameters' do
    it 'when data is [[622,20],[559,30]], should be [662,619]' do
      data = [[622,20],[559,30]]
      @obscuring_references = ObscuringReferences.new(data)
      expect(@obscuring_references.diameters).to eq ([662,619])
    end
    it 'when data is [[622,20],[622,23],[559,30],[559,40]] should be [662,668,619,639]' do
      data = [[622,20],[622,23],[559,30],[559,40]]
      @obscuring_references = ObscuringReferences.new(data)
      expect(@obscuring_references.diameters).to eq ([662,668,619,639])
    end
  end
end
