class BeerSong
  VERSES = 99

  def verse(first)
    first_remaining = first - 1

    if first > 1
      "#{first} #{bottle_plural(first)} of beer on the wall, #{first} #{bottle_plural(first)} of beer.\n" \
      "Take one down and pass it around, #{first_remaining} #{bottle_plural(first_remaining)} of beer on the wall.\n"
    elsif first == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  # Creates a range from start value to end_verse value, applies verse method to each number generated
  def verses(start, end_verse)
    start.downto(end_verse).map { |i| verse(i) }.join("\n")
  end

  # Call method verse to run from 99 to 0, creating the whole song
  def lyrics
    verses(VERSES, 0)
  end

  private

  # private method to define when to use bottle or bottles in the verses
  def bottle_plural(count)
    count == 1 ? "bottle" : "bottles"
  end
end
