class InvalidNumberError < StandardError
  def message
    "Invalid Number, Please enter a valid number\n
    Please make sure your number starts with +44 or 44 or 0 and have 7 after the prefix\n
    and is of 10 digits with prefix removed"
  end
end
