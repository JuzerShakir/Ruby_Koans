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
  # WRITE THIS CODE
=begin
  if a == b && b == c
    return :equilateral
  elsif a == b || a == c || b == c
    return :isosceles
  else
    return :scalene
  end
=end
  sides = [a, b, c].sort

  raise TriangleError if (sides[0] <= 0) || (sides[0] + sides[1] <= sides[2])

  return :equilateral if sides.count(a) == 3
  return :isosceles if sides.count(a) == 2 || sides.count(b) == 2
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
