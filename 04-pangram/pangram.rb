class Pangram
  def self.is_pangram?(sentence)
    alphabet = ("a".."z").to_a
    # Syntax enu.all? { |obj| block } or enu.all?(pattern)
    alphabet.all? { |letter| sentence.downcase.include?(letter) }
  end
end
