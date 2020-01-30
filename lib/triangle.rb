require'pry'
class Triangle
  
attr_accessor :equilateral, :isosceles, :scalene, :l1, :l2, :l3
def initialize(l1, l2, l3)
@tri_l = []
@l1 = l1
@l2 = l2 
@l3 = l3
@tri_l << @l1 
@tri_l << @l2 
@tri_l << @l3 
@scalene = scalene
@equilateral = equilateral
@isosceles = isosceles
 end
 
 def valid?
   third_side = @tri_l[0] + @tri_l[1]
   first_side = @tri_l[1] + @tri_l[2]
   second_side = @tri_l[2] + @tri_l[0]
   
   if (first_side > @tri_l[0]) && (second_side > @tri_l[1]) && (third_side > @tri_l[2]) 
     if !@tri_l.any? {|i| i <= 0 }
       true 
   else 
     false 
     #binding.pry
   end
   
 end
   end
 
class TriangleError < StandardError

end

def kind
    if valid?
      if @tri_l.uniq.length == 1
        return :equilateral
      elsif @tri_l.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
end


