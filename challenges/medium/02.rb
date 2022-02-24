class Robot 
    attr_accessor :name
    
    @@used_names  = []
    
    # This is where I messed up for some reason, even though my code was similar
    def name 
        return @name if @name # Return name if name isn't "nil"
        # Generate a new name if: name is nil or the name is already in use
        @name = generate_name while @@used_names.include?(@name) || @name.nil? 
        @@used_names << @name 
        @name 
    end
    
    def reset 
        @@used_names.delete(name)
        self.name = nil
    end
    
    def generate_name
        string = ""
        loop do
            
            until string.length >= 2
                string << ("A".."Z").to_a.sample
            end
            
            until string.length >= 5
                string << "#{(0..9).to_a.sample}"
            end
            
            break if string.length >= 5 && !@@used_names.include?(string)
        end
        
        string
    end
end