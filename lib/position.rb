class Position
  attr_reader :x, :y, :direction

  def initialize x, y, direction
    @x = x
    @y = y
    @direction = direction
  end

  def left
    case @direction
    when 'NORTH'; face_direction 'WEST'
    when 'WEST';  face_direction 'SOUTH'
    when 'SOUTH'; face_direction 'EAST'
    when 'EAST';  face_direction 'NORTH'
    end
  end

  def right
    case @direction
    when 'NORTH'; face_direction 'EAST'
    when 'WEST';  face_direction 'NORTH'
    when 'SOUTH'; face_direction 'WEST'
    when 'EAST';  face_direction 'SOUTH'
    end
  end

  def move
    case @direction
    when 'NORTH'; move_north
    when 'EAST';  move_east
    when 'SOUTH'; move_south
    when 'WEST';  move_west
    end
  end

  def report
    "#{@x},#{@y},#{@direction}"
  end

  private

  def face_direction direction; Position.new @x, @y, direction; end
  def move_north; Position.new @x,     @y + 1, @direction; end
  def move_south; Position.new @x,     @y - 1, @direction; end
  def move_east;  Position.new @x + 1, @y,     @direction; end
  def move_west;  Position.new @x - 1, @y,     @direction; end
end
