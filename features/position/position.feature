Feature: Position
  Scenario Outline: Initial Postions Report Properly
    Given an initial position of <x1>,<y1>,<d1>
    Then expect a current position of "<pos>"

    Examples:
      | x1 | y1 | d1    | pos       |
      | 0  | 0  | NORTH | 0,0,NORTH |
      | 1  | 1  | EAST  | 1,1,EAST  |
      | 4  | 4  | SOUTH | 4,4,SOUTH |
      | 0  | 4  | WEST  | 0,4,WEST  |

  Scenario Outline: Positions can turn left
    Given an initial position of 0,0,<d1>
    When position turns left
    Then expect a current position of "0,0,<d2>"

    Examples:
      | d1    | d2    |
      | NORTH | WEST  |
      | WEST  | SOUTH |
      | SOUTH | EAST  |
      | EAST  | NORTH |

  Scenario Outline: Positions can turn right
    Given an initial position of 0,0,<d1>
    When position turns right
    Then expect a current position of "0,0,<d2>"

    Examples:
      | d1    | d2    |
      | NORTH | EAST  |
      | WEST  | NORTH |
      | SOUTH | WEST  |
      | EAST  | SOUTH |

  Scenario Outline: Position can move
    Given an initial position of <x1>,<y1>,<d>
    When position moves
    Then expect a current position of "<x2>,<y2>,<d>"

    Examples:
      | d     | x1 | y1 | x2 | y2 |
      | NORTH | 0  | 0  | 0  | 1  |
      | EAST  | 0  | 0  | 1  | 0  |
      | SOUTH | 0  | 1  | 0  | 0  |
      | WEST  | 1  | 0  | 0  | 0  |

  Scenario: Position moves around a bit
    Given an initial position of 0,0,NORTH
    When position moves
    Then expect a current position of "0,1,NORTH"
    When position turns right
    Then expect a current position of "0,1,EAST"
    When position moves
    Then expect a current position of "1,1,EAST"
    When position turns left
    Then expect a current position of "1,1,NORTH"
    When position turns left
    Then expect a current position of "1,1,WEST"
    When position moves
    Then expect a current position of "0,1,WEST"
    When position turns left
    And  position moves
    Then expect a current position of "0,0,SOUTH"
