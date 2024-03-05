*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${link_Credit}                    //a[@id='lnkCredit']
${link_Creer_contrat_credit}      //a[@id='lnkCreerContrat']
${titre_Page_Creation_Contrat}    //body[@id='page-top']/div/h3
${titre_Formulaire_Simulation}    //div[@id='contract']/form/fieldset/legend
${input_Montant_achat}            //input[@id='form_simulation_montantAchat']
${input_Montant_credit}           //input[@id='form_simulation_montantCredit']
${input_Duree}                    //input[@id='form_simulation_duree']
${select_Categorie}               //select[@id='form_simulation_categorie']
${btn_Calculer_credit}            //button[@id='calcul']
${legend_Nouveau_Contrat}         //div[@id='contract']/form/fieldset/legend

*** Keywords ***
Simulation du credit
    [Arguments]    ${montant_achat}    ${montant_credit}    ${duree}    ${categorie}
    Click Element    ${link_Credit}
    Click Element    ${link_Creer_contrat_credit}
    Element Text Should Be    ${titre_Page_Creation_Contrat}    Création d'un contrat de crédit
    Element Text Should Be    ${titre_Formulaire_Simulation}    Simulation d'un crédit
    Input Text    ${input_Montant_achat}    ${montant_achat}
    Input Text    ${input_Montant_credit}    ${montant_credit}
    Input Text    ${input_Duree}    ${duree}
    Select From List By Value    ${select_Categorie}    ${categorie}
    Verification champs de la simulation
    Click Element    ${btn_Calculer_credit}
    Element Text Should Be    ${legend_Nouveau_Contrat}    Nouveau contrat


Verification champs de la simulation
    ${text_montantachat}=        Get Element Attribute    ${input_Montant_achat}    value
    ${nb_achat}=    Convert To Integer    ${text_montantachat}
    
    ${text_montantcredit}=        Get Element Attribute    ${input_Montant_credit}    value
    ${nb_credit}=    Convert To Integer    ${text_montantcredit}
    ${text_duree}=    Get Element Attribute    ${input_Duree}    value    
    ${nb_duree}=    Convert To Integer    ${text_duree}
    Should Be True    ${nb_achat} < 50000 and ${nb_achat} > 6250
    Should Be True    ${nb_credit} < 40000 and ${nb_credit} > 5000
    Should Be True    ${nb_duree} < 48 and ${nb_duree} > 12


    
    