class Robot
  attr_reader :position, :table

  def initialize x = 5, y = 5
    @table = Table.new x, y
  end

  def place x, y, d
    newPosition = Position.new x, y, d
    moveTo newPosition
  end

  def left
    moveTo @position.left if @position
  end

  def right
    moveTo @position.right if @position
  end

  def move
    moveTo @position.move if @position
  end

  def report
    @position.report if @position
  end

  private

  def moveTo position
    return unless @table
    @position = position if isValidPosition? position
  end

  def isValidPosition? position
    @table.isValid? position.x, position.y
  end
end
