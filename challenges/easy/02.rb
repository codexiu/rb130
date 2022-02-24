=begin
- Take two strings
- Count differences between them
- If the strings are of unequal length ... ?
=end

class DNA 
    attr_reader :strand 
    
    def initialize(strand)
        @strand = strand
    end
    
    def hamming_distance(other)
        differences = 0
        
        strand_one = self.strand 
        strand_two = other 
        counter = 0
        
        strand_one.length < strand_two.length ? shorter_length = strand_one.length : shorter_length = strand_two.length
        
        until counter >= shorter_length
            char_one = strand_one[counter]
            char_two = strand_two[counter]
            
            differences += 1 unless char_one == char_two
            counter += 1
        end
        
        differences
    end
end 