*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
# Global
${SERVER}                       www.alza.cz
${BROWSER}                      Chrome
${DELAY}                        0.2
${HOME URL}                     https://${SERVER}/

# Main page elements
${ACCEPT COOKIES}               //*[@id="rootHtml"]/body/div[7]/div/div/div[2]/a[1]
${HOMEPAGE TITLE}               Alza.cz – rychlý a pohodlný nákup odkudkoliv | Alza.cz
${WORKSTATIONS TITLE}           Pracovní notebooky | Alza.cz
${COMPUTERS MENU}               id=litp18890188
${WORKSTATIONS SUBMENU}         //*[@id="fb18890188"]/div[2]/div[2]/div[2]/div[1]/a[3]

# Catalog page elements
${FILTERING BY MOST EXPENSIVE}  id=ui-id-5
${RELOADED STATE}               return document.readyState == "complete"
${SALE ITEM1}                   //*[@id="boxes"]/div[
${SALE ITEM2}                   ]/div[2]/div[1]/span/div/div/a
${CART ICON}                    //*[@id="page"]/div[1]/div/div/div[1]/div/header/div[4]/a/span
${BACK BUTTON}                  id=varBBackButton

*** Keywords ***
# Given
Browser is opened
    Open browser            ${HOME URL}    ${BROWSER}
    Maximize browser window
    Set Selenium speed      ${DELAY}
    Click element           ${ACCEPT COOKIES}
    Home page should be opened

Home page should be opened
    Title should be         ${HOMEPAGE TITLE}

# When
User navigates to Work computers
    Mouse over                      ${COMPUTERS MENU}
    Page Should Contain Element     ${WORKSTATIONS SUBMENU}    5s
    Click element                   ${WORKSTATIONS SUBMENU}
    Wait For Condition	            ${RELOADED STATE}
    Sleep   5s
    Title should be                 ${WORKSTATIONS TITLE}

User filters from most expensive
    Scroll element into view    ${FILTERING BY MOST EXPENSIVE}
    Click element               ${FILTERING BY MOST EXPENSIVE}
    Wait For Condition	        ${RELOADED STATE}

User adds "${ITEM NUMBER}" most expensive item
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${BACK BUTTON}
    Run Keyword If    ${present}    click element    ${BACK BUTTON}
    Scroll element into view        ${SALE ITEM1}${ITEM NUMBER}${SALE ITEM2}
    Click element                   ${SALE ITEM1}${ITEM NUMBER}${SALE ITEM2}
    Wait For Condition	            ${RELOADED STATE}

# Then
Cart should contain "${COUNT}" item(s)
    Wait until element is visible   ${CART ICON}    5s
    Element text should be          ${CART ICON}    ${COUNT}