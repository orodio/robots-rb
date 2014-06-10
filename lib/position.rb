class Position
  attr_reader :x, :y, :d

  def initialize x, y, d
    @x = x;
    @y = y;
    @d = d
  end

  def left
    case @d
      when 'NORTH'; faceDirection 'WEST'
      when 'WEST';  faceDirection 'SOUTH'
      when 'SOUTH'; faceDirection 'EAST'
      when 'EAST';  faceDirection 'NORTH'
    end
  end

  def right
    case @d
      when 'NORTH'; faceDirection 'EAST'
      when 'WEST';  faceDirection 'NORTH'
      when 'SOUTH'; faceDirection 'WEST'
      when 'EAST';  faceDirection 'SOUTH'
    end
  end

  def move
    case @d
      when 'NORTH'; moveNorth
      when 'EAST';  moveEast
      when 'SOUTH'; moveSouth
      when 'WEST';  moveWest
    end
  end

  def report
    "#{@x},#{@y},#{@d}"
  end

  private

  def faceDirection direction; Position.new @x, @y, direction; end
  def moveNorth; Position.new @x,     @y + 1, @d; end
  def moveSouth; Position.new @x,     @y - 1, @d; end
  def moveEast;  Position.new @x + 1, @y,     @d; end
  def moveWest;  Position.new @x - 1, @y,     @d; end
end
