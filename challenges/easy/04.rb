class Anagram
    attr_reader :word
    
    def initialize(word)
      @word = word
    end
    
    def match(array)
        array.select do |element|
            next if element.downcase == word.downcase
            element.downcase.chars.sort == word.downcase.chars.sort 
        end
    end
end