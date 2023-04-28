require './lib/caesar.rb'

describe 'Caesar.rb' do
  describe "#caesar" do
    it "works with small positive shift" do
      expect(caesar("ABCD", 3)).to eql("DEFG")
    end
    it "works with small negative shift" do
      expect(caesar("ABCD", -3)).to eql("XYZA")
    end
    it "works with large positive shift" do
      expect(caesar("ABCD", 100)).to eql("WXYZ")
    end
    it "works with large negative shift" do
      expect(caesar("ABCD", -100)).to eql("EFGH")
    end
    it "works with upper case" do
      expect(caesar("ABCD", 3)).to eql("DEFG")
    end
    it "works with lower case" do
      expect(caesar("abcd", 3)).to eql("defg")
    end
    it "works with punctuation" do
      expect(caesar("!ABCD!", 3)).to eql("!DEFG!")
    end
    it "works with multiple words" do
      expect(caesar("Hello there", 3)).to eql("Khoor wkhuh")
    end
  end
end
