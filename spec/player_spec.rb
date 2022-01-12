require 'player'

describe Player do
  describe "#name" do
    it "returns its name" do
      test = Player.new(name: "test_name")
      expect(test.name).to eq "test_name"
    end
  end
end
