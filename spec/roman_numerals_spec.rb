require 'roman_numerals'

describe RomanNumerals do

  describe "&numbers" do
    it "contains an array" do
      expect(RomanNumerals::NUMBERS).to be_a_kind_of(Hash)
    end
  end

  describe "#convert" do
    it "converts 1 into I" do
      expect(subject.convert(1)).to eq "I"
    end

    it "converts 2 into II" do
      expect(subject.convert(34)).to eq "XXXIV"
    end
  end

end
