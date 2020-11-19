class Triangle
  attr_reader :sides

  def initialize(a, b, c)
    @sides = [a, b, c].sort
  end

  def kind
    if @sides[0] <= 0 || @sides[0]+@sides[1] <= @sides[2]
      raise TriangleError
    end
    if @sides[0] == @sides[2]
      return :equilateral
    elsif @sides[1] == @sides[2] && @sides[0] < @sides[1]
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "illegal triangle given"
    end
  end
end