class Robot
  attr_reader :position, :table

  def initialize x = 5, y = 5
    @table = Table.new x, y
  end

  def place x, y, d
    return unless x && y && d
    new_position = Position.new x, y, d
    move_to new_position
  end

  def left
    move_to @position.left if @position
  end

  def right
    move_to @position.right if @position
  end

  def move
    move_to @position.move if @position
  end

  def report
    @position.report if @position
  end

  def command command
    return unless command
    command = command.split(' ')

    case command[0]
    when "PLACE";  place( *command[1].split(',') )
    when "MOVE";   move
    when "RIGHT";  right
    when "LEFT";   left
    when "REPORT"; report
    end
  end

  private

  def move_to position
    return unless @table
    @position = position if is_valid_position? position
  end

  def is_valid_position? position
    @table.is_valid? position.x, position.y
  end
end
