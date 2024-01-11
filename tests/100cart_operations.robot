*** Settings ***
Documentation   Welcome to Gherkin based test sute for Alza webstore
...
...             This sute covers scenario of adding 2
...             most expensive items to the cart
Resource        resource.robot
Test Teardown   Close Browser

*** Test Cases ***
101 2 most expensive items added to cart
    [Tags]  Smoke
    Given Browser is opened
    When User navigates to Work computers
    And User filters from most expensive
    And User adds "1" most expensive item
    And User adds "2" most expensive item
    Then Cart should contain "2" item(s)
