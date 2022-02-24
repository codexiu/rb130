class PerfectNumber

    def self.classify(argument)
        raise ArgumentError.new "The number can't be negative" if argument < 0
        factors = []
        
        1.upto(argument-1) do |num|
            factors << num if argument % num == 0
        end
        
        if factors.reduce(:+) == argument
            return "perfect"
        elsif factors.reduce(:+) > argument 
            return "abundant"
        elsif factors.reduce(:+) < argument
            return "deficient"
        end
    end
    
end 

# My program raises ArgumentError, not StandardError like in the test suite.