class Triangle
  
	def initialize(side1, side2, side3)
		@side1 = side1
		@side2 = side2
		@side3 = side3
	end

	def kind
		if @side1 == 0 || @side2 == 0 || @side3 == 0
			raise TriangleError #sides cannot be zero
		elsif @side1 >= @side2 + @side3 || @side2 >= @side3 + @side1 || @side3 >= @side1 + @side2
			raise TriangleError #sides cannot be equal or greater than the sum of the other two sides
		end
		if @side1 == @side2 || @side2 == @side3 || @side3 == @side1
			if @side1 == @side2 && @side2 == @side3
				:equilateral
			else
				:isosceles
			end
		else
			:scalene
		end
	end

	class TriangleError < StandardError

		def message
			"Impossible triangle."
		end

	end

end
