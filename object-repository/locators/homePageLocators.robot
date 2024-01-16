*** Settings ***
Documentation   Home page locators

*** Variables ***
${ACCEPT COOKIES}           xpath=//a[contains(text(), 'Rozumím')]
${HOMEPAGE TITLE}           Alza.cz – rychlý a pohodlný nákup odkudkoliv | Alza.cz
${WORKSTATIONS TITLE}       Pracovní notebooky | Alza.cz
${COMPUTERS MENU}           id=litp18890188
${WORKSTATIONS SUBMENU}     //*[@id="fb18890188"]/div[2]/div[1]/div[2]/div[1]/a[3]
