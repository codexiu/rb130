class SumOfMultiples
    attr_reader :multiples
    
    def initialize(*multiples)
        if multiples.size > 0
            @multiples = multiples
        else
            @multiples = [3, 5]
        end
    end
    
    def to(argument)
        result = []
        
        1.upto(argument-1) do |num|
            multiples.each do |lower_num|
                result << num if num % lower_num == 0 unless result.include?(num)
            end
        end
        
        return 0 if result.reduce(:+).nil?
        result.reduce(:+)
    end
    
    def self.to(argument)
        SumOfMultiples.new(3, 5).to(argument)
    end
end 

#p SumOfMultiples.to(100)