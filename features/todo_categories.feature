Feature: Filter todos by category
  As a user
  I want to filter my todos by category
  So that I can focus on related tasks

  Scenario: User filters todos by an existing category
    Given the following todos exist:
      | description   | category    |
      | Buy groceries | home chores |
      | Finish report | work        |
    When I visit the todos page
    And I filter todos by "work"
    Then I should see "Finish report"
    And I should not see "Buy groceries"

  Scenario: Category filter with no matches
    Given the following todos exist:
      | description   | category |
      | Buy groceries | personal |
    When I visit the todos page
    And I filter todos by "study"
    Then I should see no todos
