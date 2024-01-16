*** Settings ***
Documentation   Welcome to Gherkin based test sute for Alza webstore
...             This sute covers scenarios of adding 2
...             most expensive items to the cart
Resource        ../object-repository/page-objects/homePageObjects.robot
Resource        ../object-repository/page-objects/catalogPageObjects.robot
Test Teardown   Close Browser

*** Test Cases ***
101 2 most expensive items added to cart
    [Tags]  Smoke
    Given Browser is opened
    When User navigates to Work notebooks
    And User filters from most expensive
    And User adds "1" item
    And User adds "2" item
    Then Cart should contain "2" item(s)

*** Test Cases ***
101 2 most expensive items visible at cart
    [Tags]  Smoke
    Given Browser is opened
    When User navigates to Work notebooks
    And User filters from most expensive
    And User adds "1" item
    And User adds "2" item
    And User hovers mouse over cart button
    Then Cart should contain "2" item(s) in list
