*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${legend_Recherche}       //div[@id='contract']/fieldset/legend
${input_Prenom_Client}    //input[@id='firstname']
${input_Nom_Client}       //input[@id='name']
${btn_Recherche}          //input[@id='btnRechercher']
${table_Clients}          //table[@id='clients']
${btn_Valider}            //button[@id='submit']

*** Keywords ***
Recherche d'un client
    [Arguments]    ${prenom}    ${nom}
    Element Text Should Be    ${legend_Recherche}    Rechercher un client
    Input Text    ${input_Nom_Client}    ${nom}
    Input Text    ${input_Prenom_Client}    ${prenom}
    ${nom_Client}=    Get Text    ${input_Nom_Client}
    ${prenom_Client}=    Get Text    ${input_Prenom_Client}
    
    Click Element    ${btn_Recherche}

Validation d'un client existant
    [Arguments]    ${prenom}    ${nom}
    Element Should Be Visible    ${table_Clients}
    Page Should Contain    ${nom}
    Page Should Contain    ${prenom}
    Execute Javascript    document.querySelector("#customControlValidation2").click()
    Click Element    ${btn_Valider}