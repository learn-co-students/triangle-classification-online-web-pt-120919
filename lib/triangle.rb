class Triangle
  attr_accessor :one, :two, :three 
  
  def initialize(one, two, three)
    @one = one
    @two = two 
    @three = three
  end
  
  def kind 
    if @one <= 0 or @two <= 0 or @three <= 0 
      raise TriangleError 
    elsif @one + @two <= @three or @one + @three <= @two or @two + @three <= @one 
      raise TriangleError 
    else 
      if @one == @two and @one == @three 
        return :equilateral
      elsif @one == @two or @one == @three or @two == @three 
        return :isosceles 
      elsif @one != @two and @one != @three and @two != @three 
        return :scalene 
      end 
    end 
  end
  
  class TriangleError < StandardError
    
  end
end
