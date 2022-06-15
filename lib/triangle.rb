require 'pry'

class Triangle
  
  attr_accessor :side_1, :side_2, :side_3, :all_sides

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @all_sides =[@side_1, @side_2, @side_3].sort
  end

  def kind
    if valid_triangle
      begin
        raise TriangleError
      end
    end
    if side_1 == side_2 && side_2 == side_3
      :equilateral 
    elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
      :isosceles
    else
      :scalene
    end
  end


  def valid_triangle
    all_sides.any? do |side|
      side < 0 || all_sides[0] + all_sides[1] <= all_sides[2]
    end
  end

  # |side| side > 0} && side_1 + side_2 > side_3 || side_1 + side_3 > side_2 || side_2 + side_3 > side_1
  # binding.pry

    # if triangle.class != Triangle
    # begin
    #   raise TriangleError
    # end
        # raise error if triangle is not valid
    #valid triangle is side_1 + side_2 > side_3
    # each side > 0
    # use @sides from above

  #@sides is an array of numbers

  class TriangleError < StandardError
  end


end
