class Triangle
  # write code here
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if(((@side1 + @side2) <= @side3) || ((@side1 + @side3) <= @side2) || ((@side2 + @side3) <= @side1))
      raise TriangleError, 'haihappen bro'
    elsif (@side1 === 0 && @side2 === 0 && @side3 === 0)
      raise TriangleError, 'Sides must have length'
    elsif(@side1 < 0 || @side2 < 0 || @side3 < 0)
      raise TriangleError, 'Sides must be greater than 0'
    # elsif(((@side1 + @side2) < @side3) || ((@side1 + @side3) < @side2) || ((@side2 + @side3) < @side1))
    #   raise TriangleError, 'haihappen bro'
    elsif (@side1 === @side2 && @side1 === @side3 && @side2 === @side3)
      :equilateral
    elsif ((@side1 === @side2 && @side1 != @side3) || (@side1 === @side3 && @side1 != @side2) || (@side2 === @side3 && @side2 != @side1))
      :isosceles
    elsif (@side1 != @side2 && @side1 != @side3 && @side2 != @side3)
      :scalene   
    
    end
  end

  class TriangleError < StandardError
  end
end

# obj = Triangle.new(2,2,2)
# obj1 = Triangle.new(2,3,2)
# obj2 = Triangle.new(2,4,6)
# obj3 = Triangle.new(0,0,0)

# p obj.kind
# p obj1.kind
# p obj2.kind
# p obj3.kind