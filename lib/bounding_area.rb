class BoundingArea

  attr_reader :area, :width, :height, :left, :right, :top, :bottom

  def initialize (area)
    @area = area
    @points = false
  end

  def contains_point?(x, y)
    points = nil
    if @area.empty?
      points = false
    elsif
      @area.each do |box|
        if box.left <= x && (box.left + box.width) >= x && box.bottom <= y && (box.bottom + box.height) >= y
          points = true
          break
        else
          points = false
        end
      end
    end
    points
  end

end
