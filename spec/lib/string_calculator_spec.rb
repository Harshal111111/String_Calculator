require 'string_calculator'

RSpec.describe StringCalculator do
  describe 'addition' do
    it "returns 0 for an empty string" do 
      expect(StringCalculator.new.add("")).to eq(0)
    end
  
    it "returns number itself if one number is provided" do
      expect(StringCalculator.new.add("1")).to eq(1)
    end

    it "returns sum of two numbers separated by comma" do
      expect(StringCalculator.new.add("2,6")).to eq(8)
    end

    it "return sum of multiple numbers separated by comma" do
      expect(StringCalculator.new.add("2,3,4,1,5")).to eq(15)
    end

    it "ignores new lines between numbers" do
      expect(StringCalculator.new.add("1\n3,6")).to eq(10)
    end

    it "accepts different delimiters" do
      expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
    end
  end
end