class Table
  attr_reader :x_min, :x_max, :y_min, :y_max

  def initialize x = 5, y = 5
    @x_min = @y_min = 0
    @x_max = x
    @y_max = y
  end

  def is_valid? x, y
    is_valid_x?(x) && is_valid_y?(y)
  end

  private

  def is_valid_x? x
    is_in_range? x, @x_min, @x_max
  end

  def is_valid_y? y
    is_in_range? y, @y_min, @y_max
  end

  def is_in_range? v, v_min, v_max
    v >= v_min && v < v_max
  end
end
