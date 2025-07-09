require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the given number if the number is one only' do
      expect(StringCalculator.add("5")).to eq(5)
    end

    it 'returns total of all the numbers' do
      expect(StringCalculator.add("2,3")).to eq(5)
    end

    it 'returns the total sum of multiple numbers' do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end

    it 'handles new line character' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters like //;\n1;2' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
  end
end
