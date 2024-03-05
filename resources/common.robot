*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://credit-auto.qsiconseil.ma/
${BROWSER}    Edge


*** Keywords ***
Setup Test
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Teardown
    Close Browser
