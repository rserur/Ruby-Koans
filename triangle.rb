# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

  ab = a.eql? b
  ac = a.eql? c
  bc = b.eql? c


  raise TriangleError, "Sides must be greater than zero." if (a <=0  || b <=0 || c <= 0)
  raise TriangleError, "Any two sides must add up to a a length greeater than the 3rd side." if ( (a + b <= c) || (b + c <= a) || ((a + c) <= b))

  if ab && bc
    return :equilateral
  elsif ab || ac
    return :isosceles
  elsif bc
    return :isosceles
  elsif !ab || !ac || !bc
    return :scalene
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end