class Triangle
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if self.valid?
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end
  
  def valid?
    less_than = @a <= 0 || @b <= 0 || @c <= 0
    equality = equality?(@a, @b, @c) || equality?(@b, @c, @a) || equality?(@a, @c, @b)
    less_than || equality
  end
  
  def equality?(a, b, c)
    a + b <= c
  end
  
  class TriangleError < StandardError
    def message
      
    end
  end
end
