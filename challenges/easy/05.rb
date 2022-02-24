class Scrabble 
    attr_reader :word
    
    @@scrab = {
    "a" => 1, 
    "b" => 3, 
    "c" => 3, 
    "d" => 2, 
    "e" => 1, 
    "f" => 4, 
    "g" => 2, 
    "h" => 4, 
    "i" => 1,
    "j" => 8,
    "k" => 5,
    "l" => 1,
    "m" => 3,
    "n" => 1,
    "o" => 1,
    "p" => 3,
    "q" => 10,
    "r" => 1,
    "s" => 1,
    "t" => 1,
    "u" => 1,
    "v" => 4,
    "w" => 4,
    "x" => 8,
    "y" => 4,
    "z" => 10
    }
    
    def initialize(word)
        @word = word
    end 
    
    def score 
        return 0 if word.nil?
        return 0 unless word.downcase.chars.all? { |char| @@scrab.keys.include?(char) }
        counter = 0
        
        word.downcase.chars.each do |element|
            counter += @@scrab[element]
        end
        
        counter
    end
    
    def self.score(argument)
        return 0 if argument.nil?
        return 0 unless argument.downcase.chars.all? { |char| @@scrab.keys.include?(char) }
        counter = 0
        
        argument.downcase.chars.each do |element|
            counter += @@scrab[element] 
        end
        
        counter
    end 
end 

# Their solution was interesting.