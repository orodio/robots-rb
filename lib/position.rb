class Position
  attr_reader :x, :y, :direction

  def initialize x, y, direction
    @x = x
    @y = y
    @direction = direction
  end

  def left
    case @direction
      when 'NORTH'; faceDirection 'WEST'
      when 'WEST';  faceDirection 'SOUTH'
      when 'SOUTH'; faceDirection 'EAST'
      when 'EAST';  faceDirection 'NORTH'
    end
  end

  def right
    case @direction
      when 'NORTH'; faceDirection 'EAST'
      when 'WEST';  faceDirection 'NORTH'
      when 'SOUTH'; faceDirection 'WEST'
      when 'EAST';  faceDirection 'SOUTH'
    end
  end

  def move
    case @direction
      when 'NORTH'; moveNorth
      when 'EAST';  moveEast
      when 'SOUTH'; moveSouth
      when 'WEST';  moveWest
    end
  end

  def report
    "#{@x},#{@y},#{@direction}"
  end

  private

  def faceDirection direction; Position.new @x, @y, direction; end
  def moveNorth; Position.new @x,     @y + 1, @direction; end
  def moveSouth; Position.new @x,     @y - 1, @direction; end
  def moveEast;  Position.new @x + 1, @y,     @direction; end
  def moveWest;  Position.new @x - 1, @y,     @direction; end
end
