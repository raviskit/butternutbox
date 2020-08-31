
module Formatter
  module PhoneNumber
    module UK
      NUMBER_VALIDATOR = /^(\+447\s?\d{9}|447\s?\d{9}|07\s?\d{9})?$/

      # Method to format given number in +44 format.
      # @param : number
      # number should be provided as string for matching and formatting.
      def self.format(number)
        number = number.strip.gsub(" ", "") # remove whitespaces
        raise "Invalid number" if (NUMBER_VALIDATOR =~ number).nil?

        leading_number = number[0]
        if leading_number == "4"
          number = number.prepend("+")
        elsif leading_number == "0"
          number = "+44" + number[1..number.length-1]
        else
          number
        end
      end
    end
  end

end
