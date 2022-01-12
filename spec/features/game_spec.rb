require 'game'

describe Game do
  describe "#attack" do
    let (:player_1) { double :player_1 }
    let (:player_2) { double :player_2 }

    it { is_expected.to respond_to(:attack).with(1).argument }

    it "damages player 2" do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end
end