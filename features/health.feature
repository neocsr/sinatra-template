Feature: Service Health
  As a service consumer
  In order to test the service
  I want to visit the health endpoint

  Scenario: Health
    Given I am viewing "/health"
    Then the response should be json
    And the JSON response should be:
      """
      {"message":"ok"}
      """