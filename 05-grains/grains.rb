class Grains
  # Chestboard size
  SIZE = 64

  # function to set each square qty does not accept invalid square number - max 64
  def self.square(number)
    if number <= SIZE || number < 1
      2**(number - 1)
    else
      puts "This square does not exist!"
    end
  end

  def self.total
    (1..SIZE).reduce(0) { |sum, n| sum + square(n) }
  end
end

test = Grains.square(65)
print test
