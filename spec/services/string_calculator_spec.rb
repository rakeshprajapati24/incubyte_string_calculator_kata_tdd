RSpec.describe StringCalculator do
  describe ".addition" do
    it "returns 0 for an empty string" do
      expect(described_class.addition("")).to eq(0)
    end
  end
end