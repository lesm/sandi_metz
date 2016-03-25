require 'wheel'

RSpec.describe Wheel do 
  describe '#circunference' do
    it 'when rim = 26 and tire = 1.5 the circunference is 91.11' do
      wheel = Wheel.new(26,1.5)
      expect(("%.2f" % wheel.circunference).to_f).to eq 91.11 
    end

    it 'when rim = 50 and tire = 2 the circunference is 169.65' do
      wheel = Wheel.new(50,2)
      expect(("%.2f" % wheel.circunference).to_f).to eq 169.65
    end
  end
end
