class Position
  attr_accessor :x, :y, :direction

  def initialize x, y, direction
    @x = x.to_i
    @y = y.to_i
    @direction = direction.upcase
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
    puts current_position
  end

  def current_position
    "#{@x},#{@y},#{@direction}"
  end

  private

  def face_direction direction; Position.new @x, @y, direction; end
  def move_north; Position.new @x,     @y + 1, @direction; end
  def move_south; Position.new @x,     @y - 1, @direction; end
  def move_east;  Position.new @x + 1, @y,     @direction; end
  def move_west;  Position.new @x - 1, @y,     @direction; end
end
