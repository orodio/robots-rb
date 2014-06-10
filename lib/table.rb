class Table
  attr_reader :xMin, :xMax, :yMin, :yMax

  def initialize x = 5, y = 5
    @xMin = @yMin = 0
    @xMax = x
    @yMax = y
  end

  def isValid? x, y
    isValidX?(x) && isValidY?(y)
  end

  private

  def isValidX? x
    isInRange? x, @xMin, @xMax
  end

  def isValidY? y
    isInRange? y, @yMin, @yMax
  end

  def isInRange? v, vMin, vMax
    v >= vMin && v < vMax
  end
end
