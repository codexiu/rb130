class Series
    attr_reader :string
    
    def initialize(string)
        @string = string
    end 
    
    def slices(length)
        raise ArgumentError.new "Length is greater than length of string" if length > string.length
        
        collection = []
        
        string.chars.each_cons(length) do |block|
            collection << block.map(&:to_i)
        end
        
        collection
    end
end