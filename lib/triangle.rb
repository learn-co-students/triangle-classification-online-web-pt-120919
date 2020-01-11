class Triangle

  attr_accessor :side1,:side2,:side3

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def is_scalene?
    (@side1 != @side2) && (@side2  != @side3) && (@side1 != @side3)
  end
  
  def is_iso?
    (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
  end
  
  def is_equi?
    (@side1 == @side2) && (@side2 == @side3) && (@side1 == @side3)
  end
  
  def inequality_violated?
    test1 = @side1 + @side2 > @side3
    test2 = @side2 + @side3 > @side1
    test3 = @side3 + @side1 > @side2
    !(test1 && test2 && test3)
  end
  
  
  def kind
    
    if inequality_violated?
      raise TriangleError
    end
    
    if is_equi?
      return :equilateral
    elsif is_iso?
      return :isosceles
    elsif is_scalene?
      return :scalene
    end

  end
  
  class TriangleError < StandardError
  end
  
end
