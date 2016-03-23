require 'obscuring_references'

RSpec.describe ObscuringReferences do 
  describe '#Initialize' do
    it 'Create new instance with a two-dimensional array' do
      data = [[622,20],[622,23],[559,30],[559,40]]
      @obscurin_references = ObscuringReferences.new(data)

      expect(@obscurin_references.data).to include([622,20],[559,30])  
    end
  end
end
