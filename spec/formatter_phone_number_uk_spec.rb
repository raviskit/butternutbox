require 'spec_helper'

describe "Formatter::PhoneNumber::UK" do
  # TODO:
  describe "#format" do
    context "When number is invalid" do
      it "Should raise error as invalid number"
    end

    context "When number is valid" do
      it "when input number is in +44 format, output should be in +44 format"
      it "when input number is in 44 format, output should be in +44 format"
      it "when input number is in 07 format, output should be in +44 format"
    end
  end

end
