require_relative 'table'
require_relative 'position'

class Robot
  attr_accessor :position, :table

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
    puts current_position if @position
  end

  def current_position
    @position.current_position if @position
  end

  def command command
    command, arguments = command.downcase.split(' ')
    send command, *arguments.to_s.split(',') if respond_to? command
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
