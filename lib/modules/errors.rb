module TriangleError < StandardError
  module InstanceMethods
    def sides 
        "A triangle must have sides greater than 0"
      end
    
  end
end