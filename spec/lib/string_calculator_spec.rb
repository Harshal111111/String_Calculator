require 'string_calculator'

RSpec.describe StringCalculator do
  describe 'addition' do
    it "returns 0 for an empty string" do 
      expect(StringCalculator.new.add("")).to eq(0)
    end
  
    it "returns number itself if one number is provided" do
      expect(StringCalculator.new.add("1")).to eq(1)
    end
  end
end