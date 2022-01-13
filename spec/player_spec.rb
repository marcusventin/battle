require 'player'

describe Player do
  subject { described_class.new("test_name") }

  describe "#name" do
    it "returns its name" do
      expect(subject.name).to eq "test_name"
    end
  end
  
end
