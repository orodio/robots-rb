Feature: Table

  Scenario Outline: Default 5x5 valid values
    Given a Table
    Then a position of (<x>,<y>) is valid

    Examples:
      | x | y |
      | 0 | 0 |
      | 4 | 4 |
      | 0 | 4 |
      | 4 | 0 |
      | 2 | 2 |
      | 3 | 3 |

  Scenario Outline: Default 5x5 invalid values
    Given a Table
    Then a position of (<x>,<y>) is invalid

    Examples:
      | x  | y  |
      | -1 | -1 |
      | 0  | -1 |
      | -1 | 0  |
      | 0  | 5  |
      | 5  | 0  |
      | 5  | 5  |
      | 10 | 10 |

  Scenario: 1x1 custom table valid values
    Given a 1x1 Table
    Then a position of (0,0) is valid

  Scenario Outline: 1x1 custom table invalid values
    Given a 1x1 Table
    Then a position of (<x>,<y>) is invalid

    Examples:
      | x  | y  |
      | -1 | -1 |
      | 0  | -1 |
      | -1 | 0  |
      | 0  | 1  |
      | 1  | 0  |
      | 99 | 99 |
