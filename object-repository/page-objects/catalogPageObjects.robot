*** Settings ***
Documentation   File with Catalog page objects
Library         SeleniumLibrary
Resource        ../locators/catalogPageLocators.robot
Resource        ../locators/commonLocators.robot
Resource        ../../configs/globalConfigs.robot

*** Keywords ***
# Given

# When
User filters from most expensive
    Scroll element into view    ${FILTERING BY MOST EXPENSIVE}
    Click element               ${FILTERING BY MOST EXPENSIVE}
    Wait for condition	        ${RELOADED STATE}

User adds "${ITEM NUMBER}" item
    ${present}=  Run keyword and return status    Element should be visible   ${BACK BUTTON}
    Run keyword if    ${present}    Click element    ${BACK BUTTON}
    Scroll element into view        ${SALE ITEM1}${ITEM NUMBER}${SALE ITEM2}
    Click element                   ${SALE ITEM1}${ITEM NUMBER}${SALE ITEM2}
    Wait for condition	            ${RELOADED STATE}

User hovers mouse over cart button
    Mouse over          ${CART ICON}
    Wait for condition  ${RELOADED STATE}

# Then
Cart should contain "${COUNT}" item(s)
    Wait until element is visible   ${CART ICON}    5s
    Element text should be          ${CART ICON}    ${COUNT}

Cart should contain "${COUNT}" item(s) in list
    ${intCount}=        Get element count   ${ITEM IN ROW}
    ${realCount}=       Convert to string   ${intCount}
    Should be equal     ${realCount}        ${COUNT}