*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${btn_Imprimer}              //button[@id='print']
${btn_Enregistrer}           //button[@id='register']
${verif_creation_contrat}    //body[@id='page-top']/div[2]/div
${titre_recap_contrat}    //legend

*** Keywords ***
Impression des deux exemplaires du contrat
    Wait Until Element Contains    ${titre_recap_contrat}    Contrat de crédit    10s
    Element Text Should Be    ${titre_recap_contrat}    Contrat de crédit
    Wait Until Page Contains Element    ${btn_Imprimer}    10s
    Click Element    ${btn_Imprimer}    action_chain=True


Enregistrement du contrat
    Sleep    10s
    Switch Window    locator=MAIN
    Click Element    ${btn_Enregistrer}
    Page Should Contain Element    ${verif_creation_contrat}
