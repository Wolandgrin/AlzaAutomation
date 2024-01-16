*** Settings ***
Documentation   Common locators

*** Variables ***
${RELOADED STATE}               return document.readyState == "complete"
${ACCEPT COOKIES}           xpath=//a[contains(text(), 'Rozumím')]
${ASK CHAT BUTTON}          id=ask-chat
${CLOSE CHAT BUTTON}        id=chat-open-button