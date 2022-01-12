require 'player'

describe Player do
  describe "#name" do
    subject { described_class.new("test_name") }
    it "returns its name" do
      expect(subject.name).to eq "test_name"
    end
  end
end
