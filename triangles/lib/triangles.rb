class Triangle
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def fake_triangle
   trianglearray = [@side_a,@side_b,@side_c].sort.reverse
   trianglearray[0] > trianglearray[1] + trianglearray[2]
  end

  def type
    if @side_a == @side_b && @side_b == @side_c
      "equilateral"
    elsif @side_a == @side_b && @side_b != @side_c || @side_b == @side_c && @side_a != @side_c || @side_a == @side_c
      'isosceles'
    else
      'scalene'
    end
  end
end
