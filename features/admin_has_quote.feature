Feature: admin has quote
  As an admin
  I want to have quotes
  So that quotes can be created, updated, and deleted 

  Scenario: create new quote 
    Given I am an admin
    Then I can create new quotes

  Scenario: update existing quote
    Given I am an admin
    Then I can update existing quotes

  Scenario: delete existing quote
    Given I am an admin
    Then I can delete existing quotes
