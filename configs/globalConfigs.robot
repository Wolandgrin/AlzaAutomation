*** Settings ***
Documentation   Global configs

*** Variables ***
#Configs
${SERVER}                       www.alza.cz
${BROWSER}                      Chrome
${DELAY}                        0.2
${HOME URL}                     https://${SERVER}/

#Globals
${RELOADED STATE}               return document.readyState == "complete"
