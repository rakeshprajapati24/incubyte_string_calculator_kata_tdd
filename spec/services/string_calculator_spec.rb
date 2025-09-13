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
		it "newlines between numbers as delimiters" do
		  expect(described_class.addition("1\n2,3")).to eq(6)
		end
		it "for delimiter specified like //;\n1;2" do
		  expect(described_class.addition("//;\n1;2")).to eq(3)
		end
  end
end