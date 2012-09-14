Feature: admin creates quote
  As an admin
  I want to create a quote
  So that I have a new quote

  Scenario: create quote
    When I create a quote
    Then the quote should exist in the database
