*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${btn_Acces_Credit}        //a[@id='lnkAccesCreditAuto']
${btn_Connecter}           //button[@type='submit']
${info_Connectez_vous}     //body[@id='page-top']/div[2]/div/div/form/fieldset/legend
${titre_Page_Accueil}      //body[@id='page-top']/div/h4
${input_username}          //input[@id='username']
${input_password}          //input[@id='password']
${link_Deconnexion}        //a[@id='lnkDeconnexion']         


*** Keywords ***
Connexion
    [Arguments]    ${username}    ${password}
    Click Element    ${btn_Acces_Credit}
    Element Text Should Be    ${info_Connectez_vous}    Connectez-vous
    Input Text        ${input_username}    ${username}
    Input Password    ${input_password}    ${password}
    Click Element    ${btn_Connecter}
    Element Text Should Be    ${titre_Page_Accueil}    Bienvenue sur l'application Crédit Auto

Deconnexion
    Wait Until Element Is Visible    ${link_Deconnexion}    30s
    Click Element    ${link_Deconnexion}
    Element Should Be Visible    ${btn_Acces_Credit}