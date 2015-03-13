class BoundingArea

  attr_reader :area

  def initialize (area)
    @area = area
  end

  def contains_point?(x, y)
    @area.any? {|box| box.contains_point?(x,y)}
  end

end
