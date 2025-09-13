require "rails_helper"
RSpec.describe StringCalculator do
  describe ".addition" do
    it "returns 0 for an empty string" do
      expect(described_class.addition("")).to eq(0)
    end
    it "returns the number when a single number is provided" do
		  expect(described_class.addition("1")).to eq(1)
		end
		it "sums two comma separated numbers" do
		  expect(described_class.addition("1,5")).to eq(6)
		end
  end
end