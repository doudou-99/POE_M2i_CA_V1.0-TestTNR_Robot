*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/common.robot
Resource    ../resources/Page Object Model/connexion_deconnexion.robot
Resource    ../resources/Page Object Model/simulation_credit.robot
Resource    ../resources/Page Object Model/echeancier.robot
Resource    ../resources/Page Object Model/recherche_client.robot
Resource    ../resources/Page Object Model/resume_contrat.robot

*** Variables ***
${usergestionnaire}        gcd
${passwordgestionnaire}    acial!gcd2018
${montant_achat}           30000
${montant_credit}          27000
${duree_credit}            30
${categorie}               B
${prenom_client}           Jean
${nom_client}              DUCLOS

*** Test Cases ***
TC1 - Mettre en place le contrat de crédit auto
    common.Setup Test
    connexion_deconnexion.Connexion    ${usergestionnaire}    ${passwordgestionnaire}
    simulation_credit.Simulation du credit    ${montant_achat}    ${montant_credit}    ${duree_credit}    ${categorie}
    echeancier.Calcul de l'echeancier
    recherche_client.Recherche d'un client    ${prenom_client}    ${nom_client}
    recherche_client.Validation d'un client existant    ${prenom_client}    ${nom_client}
    resume_contrat.Impression des deux exemplaires du contrat
    resume_contrat.Enregistrement du contrat
    connexion_deconnexion.Deconnexion
    common.Teardown
