=begin
- Write a program to determine whether a triangle is equilateral, isosceles, or scalene.
 - An equilateral triangle has all three sides the same length.
 - An isosceles triangle has exactly two sides of the same length.
 - A scalene triangle has all sides of different lengths.
- For a shape to be a triangle at all, all sides must be of length > 0
- and the sum of the lengths of any two sides must be greater than the length of the third side.
=end 

class Triangle
 attr_reader :sides
 
 def initialize(one, two, three)
     @sides = [one, two, three]
     raise ArgumentError.new "Invalid triangle lengths" unless legitimate?
 end
 
 def legitimate?
    return false unless sides.all? { |side| side > 0 }
    
    if sides[0] + sides[1] <= sides[2]
        return false
    elsif sides[1] + sides[2] <= sides[0] 
        return false 
    elsif sides[0] + sides[2] <= sides[1]
        return false 
    end
    
    true
 end
 
 def kind
    sorted_array = sides.sort 
    return "equilateral" if sorted_array.uniq.length == 1
    return "isosceles" if sorted_array.uniq.length == 2
    return "scalene" if sorted_array.uniq.length == 3
 end
end

# Remember how to raise an error
# You need a refresher on object oriented programming: instance methods etc.