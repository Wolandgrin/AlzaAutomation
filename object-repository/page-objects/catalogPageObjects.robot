*** Settings ***
Documentation   File with Catalog page objects
Library         SeleniumLibrary
Resource        ../locators/catalogPageLocators.robot
Resource        ../../configs/globalConfigs.robot

*** Keywords ***
# Given

# When
User filters from most expensive
    Scroll element into view    ${FILTERING BY MOST EXPENSIVE}
    Click element               ${FILTERING BY MOST EXPENSIVE}
    Wait For Condition	        ${RELOADED STATE}

User adds "${ITEM NUMBER}" item
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${BACK BUTTON}
    Run Keyword If    ${present}    click element    ${BACK BUTTON}
    Scroll element into view        ${SALE ITEM1}${ITEM NUMBER}${SALE ITEM2}
    Click element                   ${SALE ITEM1}${ITEM NUMBER}${SALE ITEM2}
    Wait For Condition	            ${RELOADED STATE}

User hovers mouse over cart button
    Mouse over      ${CART ICON}

# Then
Cart should contain "${COUNT}" item(s)
    Wait until element is visible   ${CART ICON}    5s
    Element text should be          ${CART ICON}    ${COUNT}

Cart should contain "${COUNT}" item(s) in list
    ${intCount}=       Get element count    ${ITEM IN ROW}
    ${realCount}=     Convert To String    ${intCount}
    Should Be Equal     ${realCount}      ${COUNT}