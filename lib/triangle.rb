class Triangle
  attr_reader :a, :b, :c
  # write code here
  def initialize(a, b, c) # A, B, C are represent the three sides of an triangle
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    validating_triangle
    if a == b && b == c #checking to see if three sides are equal 
      :equilateral # if true then its a Equilateral triangle
    elsif a == b || b == c || a == c # if not true/ check to see if any two sides are equal 
      :isosceles # if true the its a Isosceles triangle
    else 
      :scalene # if no sides are equal then its a Scalene triangle
    end
  end

    def validating_triangle
      real_triangle = [(a + b > c), (a + c > b), (b + c > a)] 
        [a, b, c]. each do |side|
          real_triangle << false if side <= 0
          raise TriangleError if real_triangle.include?(false)
        end
      end
    

    class TriangleError < StandardError
    end
end

