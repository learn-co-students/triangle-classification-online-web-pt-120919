require "pry"
class Triangle
  attr_accessor :side_a, :side_b, :side_c, :all_sides,
  :equilateral, :isosceles, :scalene
    
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @all_sides = [side_a, side_b, side_c]
  end
  
  def kind 
    if valid? == false
      raise TriangleError
    elsif side_a == side_b && side_b == side_c
      return :equilateral
    elsif side_a == side_b || side_b == side_c || side_a == side_c
      return :isosceles
    elsif side_a != side_b && side_b != side_c && side_a != side_c
      return :scalene
    end
  end
  
  def valid?
    all_sides.each do |s|
      #binding.pry 
      if s <= 0
        return false 
      end
    end
       if side_a + side_b <= side_c ||
         side_b + side_c <= side_a ||
         side_c + side_a <= side_b
        return false 
      else 
        true 
      end
  end
  
  class TriangleError < StandardError
    # def message
    #   "Some message"
    # end
  end
  
  
end
