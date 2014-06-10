Feature: Robot
  Scenario Outline: Robot is placed in valid location
    Given a Robot is placed at 0,0,NORTH
    Then expect a Robot report of 0,0,NORTH

    Examples:
      | x1 | y1 | d1    | x2 | y2 | d2    |
      | 0  | 0  | NORTH | 0  | 0  | NORTH |
      | 1  | 1  | SOUTH | 1  | 1  | SOUTH |

  Scenario Outline: Robot is placed in invalid location
    Given a Robot is placed at -1,-1,NORTH
    Then expect a Robot report of nil

    Examples:
      | x  | y  |
      | -1 | -1 |
      | 0  | 5  |
      | 5  | 0  |
      | 5  | 5  |

  Scenario: Robot can turn left
    Given a Robot is placed at 0,0,NORTH
    When Robot turns left
    Then expect a Robot report of 0,0,WEST
    When Robot turns left
    Then expect a Robot report of 0,0,SOUTH
    When Robot turns left
    Then expect a Robot report of 0,0,EAST
    When Robot turns left
    Then expect a Robot report of 0,0,NORTH

  Scenario: Robot can turn right
    Given a Robot is placed at 0,0,NORTH
    When Robot turns right
    Then expect a Robot report of 0,0,EAST
    When Robot turns right
    Then expect a Robot report of 0,0,SOUTH
    When Robot turns right
    Then expect a Robot report of 0,0,WEST
    When Robot turns right
    Then expect a Robot report of 0,0,NORTH

  Scenario Outline: Robot can move in valid directions
    Given a Robot is placed at <x1>,<y1>,<d>
    When Robot moves
    Then expect a Robot report of <x2>,<y2>,<d>

    Examples:
      | d     | x1 | y1 | x2 | y2 |
      | NORTH | 0  | 0  | 0  | 1  |
      | EAST  | 0  | 0  | 1  | 0  |
      | SOUTH | 0  | 1  | 0  | 0  |
      | WEST  | 1  | 0  | 0  | 0  |

  Scenario Outline: Robot cannot move in invalid directions
    Given a Robot is placed at <x>,<y>,<d>
    When Robot moves
    Then expect a Robot report of <x>,<y>,<d>

    Examples:
      | d     | x | y |
      | NORTH | 4 | 4 |
      | EAST  | 4 | 4 |
      | SOUTH | 0 | 0 |
      | WEST  | 0 | 0 |
