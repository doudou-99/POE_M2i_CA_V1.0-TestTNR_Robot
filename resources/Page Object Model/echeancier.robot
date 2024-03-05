*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${btn_Echeancier}       //div[@id='ech']
${Tableau_echeances}    //div[@id='echeance']
${btn_Creer_contrat}    (//a[@id='lnkCreerContrat'])[2]

*** Keywords ***
Calcul de l'echeancier
    Click Element    ${btn_Echeancier}
    Page Should Contain Element    ${Tableau_echeances}
    Click Element    ${btn_Creer_contrat}