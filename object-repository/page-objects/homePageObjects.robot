*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Resource        ../locators/homePageLocators.robot
Resource        ../../configs/globalConfigs.robot



*** Keywords ***
# Given
Browser is opened
    Open browser            ${HOME URL}    ${BROWSER}
    Maximize browser window
    Set Selenium speed      ${DELAY}
    Click element           ${ACCEPT COOKIES}
    Home page should be opened

Home page should be opened
    Title should be     ${HOMEPAGE TITLE}

# When
User navigates to Work notebooks
    Mouse over                      ${COMPUTERS MENU}
    Page Should Contain Element     ${WORKSTATIONS SUBMENU}    5s
    Click element                   ${WORKSTATIONS SUBMENU}
    Wait For Condition	            ${RELOADED STATE}
    Sleep   5s
    Title should be                 ${WORKSTATIONS TITLE}

# Then
