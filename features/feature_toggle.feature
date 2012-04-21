Feature: Feature toggles
  ...

  Scenario: Feature one on
    Given I am on "http://localhost:8080/one"
    Then I should see "You are looking at Feature One"

  Scenario: Feature one on
    Given I am on "http://localhost:8081/one"
    Then I should see "You are looking at Feature One"

  Scenario: Feature two on
    Given I am on "http://localhost:8080/two"
    Then I should see "You are looking at Feature Two"

  Scenario: Feature two on
    Given I am on "http://localhost:8081/two"
    Then I should NOT see "You are looking at Feature Two"
