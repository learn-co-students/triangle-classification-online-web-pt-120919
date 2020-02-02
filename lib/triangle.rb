class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(kind)
    kind.each {|key, values| self.send(("#{key}="), value)}
  end
  
  class TriangleError < StandardErrors
  end
end
