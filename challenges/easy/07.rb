# Return 0 if the number includes letters or 8 or 9

class Octal 
    attr_reader :string 
    
    def initialize(string)
        @string = string
    end
    
    def to_decimal
        return 0 if string.match?(/[^0-7]/)
        sum = 0
        counter = 0
        digits = string.reverse.chars.map(&:to_i)
        
        digits.each do |number|
            sum += (number * (8 ** counter))
            counter += 1
        end
        
        sum
    end 
end 