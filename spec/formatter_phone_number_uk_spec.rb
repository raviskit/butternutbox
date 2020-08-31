require 'spec_helper'
require 'formatter_phone_number_uk'

describe "Formatter::PhoneNumber::UK" do

  describe "#format" do
    context "When number is invalid" do
      it "Should raise error as invalid number when length of number exceeds" do
        number = "071234567890"
        expect{ Formatter::PhoneNumber::UK.format(number)}.to raise_error InvalidNumberError
      end

      it "Should raise error as invalid number when it doesn't start with +44 or 44 or 0" do
        number = "71234567890"
        expect{ Formatter::PhoneNumber::UK.format(number)}.to raise_error InvalidNumberError
      end

      it "Should raise error as invalid number when number is contains invalid characters" do
        number = "7123456abc90"
        expect{ Formatter::PhoneNumber::UK.format(number)}.to raise_error InvalidNumberError
      end

      it "Should raise error as invalid number when it starts with +44 or 44 or 0 but is of invalid length" do
        number = "071234"
        expect{ Formatter::PhoneNumber::UK.format(number)}.to raise_error InvalidNumberError
      end

      it "Should raise error as invalid number when it starts with +44 or 44 or 0 but don't have 7 after the prefix" do
        number = "08123456789"
        expect{ Formatter::PhoneNumber::UK.format(number)}.to raise_error InvalidNumberError

        number = "+448123456789"
        expect{ Formatter::PhoneNumber::UK.format(number)}.to raise_error InvalidNumberError

        number = "448123456789"
        expect{ Formatter::PhoneNumber::UK.format(number)}.to raise_error InvalidNumberError
      end
    end

    context "When number is valid" do
      it "when input number is in +44 format, output should be in +44 format" do
        number = "+447123456789"
        expect(Formatter::PhoneNumber::UK.format(number)).to eq("+447123456789")
      end

      it "when input number is in 44 format, output should be in +44 format" do
        number = "447123456789"
        expect(Formatter::PhoneNumber::UK.format(number)).to eq("+447123456789")
      end

      it "when input number is in 07 format, output should be in +44 format" do
        number = "07123456789"
        expect(Formatter::PhoneNumber::UK.format(number)).to eq("+447123456789")
      end
    end
  end

end
