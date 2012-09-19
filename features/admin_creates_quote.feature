Feature: admin creates quote
  As an admin
  I want to create a new quote
  So that I have a new quote

  Scenario: add new quote when quotes already exist 
    Given I know how many quotes I have
    When I create a new quote
    Then I should have one additional quote

  Scenario: add new quote when no quotes exist
    Given I have no quotes
    When I create a new quote
    Then I should have 1 quote
