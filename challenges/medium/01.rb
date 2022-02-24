class Diamond
  def self.make_diamond(letter)
    range = ('A'..letter).to_a + ('A'...letter).to_a.reverse # This is an array
    diamond_width = max_width(letter) # This is an integer

    range.each_with_object([]) do |let, arr| # Take note of EWO method
      arr << make_row(let).center(diamond_width)
    end.join("\n") + "\n" # When you join the elements of the collection with a newline character, you put them all on a seperate line
  end

  def self.make_row(letter)
    return "A" if letter == 'A'
    return "B B" if letter == 'B'

    letter + determine_spaces(letter) + letter
  end
# This method has an interesting way of going about it, but it is about spaces, not letters.
  def self.determine_spaces(letter)
    all_letters = ['B']
    spaces = 1

    until all_letters.include?(letter)
      current_letter = all_letters.last
      all_letters << current_letter.next # Take note of the "next" method
      spaces += 2
    end

    ' ' * spaces
  end

  def self.max_width(letter)
    return 1 if letter == 'A'

    determine_spaces(letter).count(' ') + 2
  end
end

# p Diamond.make_row("C") # => C C
# p Diamond.determine_spaces("C") # => " "
# p Diamond.max_width("C") # => 5