require 'game'

describe Game do
  let (:player_1) { double :player }
  let (:player_2) { double :player }
  subject { described_class.new(player_1, player_2) }

  describe "#attack" do
    it { is_expected.to respond_to(:attack).with(1).argument }

    it "damages player 2" do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end

  describe "#turn_switcher" do
    it "changes turn from player_1 to player_2" do
      expect(subject.turn_switcher).to eq player_2
    end

    it "changes turn from player_2 to player_1" do
      subject.turn_switcher
      expect(subject.turn_switcher).to eq player_1
    end
  end

end