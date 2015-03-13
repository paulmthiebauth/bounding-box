class BoundingBox

  attr_reader :left, :bottom, :width, :height

  def initialize(left, bottom, width, height)
    @left = left
    @bottom = bottom
    @width = width
    @height = height
    @right = right
    @top = top
  end

  def right
    right = left + width
    right
  end

  def top
    top = bottom + height
    top
  end

  def contains_point?(x, y)
    left <= x && (left + width) >= x && bottom <= y && (bottom + height) >= y
  end

end
