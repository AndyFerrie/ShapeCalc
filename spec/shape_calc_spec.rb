require_relative('../shape_calc.rb')

describe ShapeCalc do

  describe '#area' do
    it 'returns the area of a circle' do
      shape_calc = ShapeCalc.new
      expect(shape_calc.area(:circle, 5)).to eq(Math::PI * 25)
    end

    it 'returns the area of a rectangle' do
      shape_calc = ShapeCalc.new
      expect(shape_calc.area(:rectangle, 5, 5)).to eq(25)
    end

    it 'returns the area of a triangle' do
      shape_calc = ShapeCalc.new
      expect(shape_calc.area(:triangle, 5, 5)).to eq(12.5)
    end
  end
end
