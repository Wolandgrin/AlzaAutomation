*** Settings ***
Documentation     File with Home page objects
Library           SeleniumLibrary
Resource        ../locators/commonLocators.robot

*** Keywords ***
Close support chat
    ${present}=  Run keyword and return status    Element should be visible   ${ASK CHAT BUTTON}
    Run keyword if    ${present}    Click element    ${CLOSE CHAT BUTTON}
