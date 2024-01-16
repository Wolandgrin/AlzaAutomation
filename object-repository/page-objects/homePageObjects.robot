*** Settings ***
Documentation     File with Home page objects
Library           SeleniumLibrary
Resource        ../../configs/globalConfigs.robot
Resource        ../locators/commonLocators.robot
Resource        ../locators/homePageLocators.robot
Resource        ../page-objects/commonPageObjects.robot

*** Keywords ***
# Given
Browser is opened
    Open browser            ${HOME URL}    ${BROWSER}      options=add_argument("--disable-dev-shm-usage");add_argument('--no-sandbox');add_argument('--remote-debugging-port=9222')
    Maximize browser window
    Set Selenium speed      ${DELAY}
    Click element           ${ACCEPT COOKIES}
    Close support chat
    Home page should be opened

Home page should be opened
    Title should be     ${HOMEPAGE TITLE}

# When
User navigates to Work notebooks
    Mouse over                      ${COMPUTERS MENU}
    Page should contain element     ${WORKSTATIONS SUBMENU}     5s
    Click element                   ${WORKSTATIONS SUBMENU}
    Wait for condition	            ${RELOADED STATE}
    Wait until element is visible   ${BEST CATEGORY ITEMS}      5s
    Title should be                 ${WORKSTATIONS TITLE}
    Close support chat

# Then
