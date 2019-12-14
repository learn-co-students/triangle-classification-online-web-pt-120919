class Triangle
  # write code here
 attr_reader :side1, :side2, :side3, :kind
 
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @kind = type
  end
  
  def type 
    
    if side1 <= 0 || side2 <= 0 || side3  <= 0  
      raise TriangleError
    end
    
    if side1 >= side2 + side3 || side2 >= side1 + side3 || side3 >= side1 + side2 
      raise TriangleError
    end
    
    if side1 == side2 && side1 == side3 && side1 != 0
      @kind = :equilateral
    elsif side2 == side3 || side1 == side3 || side1==side2
      @kind = :isosceles
    else 
      @kind = :scalene
    end
  end
  
  class TriangleError < StandardError
  end
  
end
