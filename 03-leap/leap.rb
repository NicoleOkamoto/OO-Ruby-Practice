class Year
  def self.leap?(year)
    if ((year % 4).zero? && year % 100 != 0) || (year % 400).zero?
      true
      # puts "Expected 'true', #{year} is a leap year."

    else
      false
      # puts "Expected 'false', #{year} is a leap year."
    end
  end
end
