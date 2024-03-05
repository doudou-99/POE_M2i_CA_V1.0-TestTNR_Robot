*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/common.robot
Resource    ../resources/Page Object Model/connexion_deconnexion.robot   


*** Variables ***

${usergestionnaire}        gcd
${passwordgestionnaire}    acial!gcd2018
${useradmin}               acd
${passwordadmin}           acial!acd2018
${userresponsable}         rcd
${passwordresponsable}     acial!rcd2018
${userloueur}              lcd
${passwordloueur}          acial!acd2018



*** Test Cases ***
TC1 - Connexion et déconnexion avec compte du gestionnaire de crédit
    common.Setup Test

    connexion_deconnexion.Connexion    ${usergestionnaire}    ${passwordgestionnaire}

    connexion_deconnexion.Deconnexion

    common.Teardown

TC2 - Connexion et déconnexion avec compte de l'administrateur
    common.Setup Test

    connexion_deconnexion.Connexion    ${useradmin}    ${passwordadmin}

    connexion_deconnexion.Deconnexion

    common.Teardown


TC3 - Connexion et déconnexion avec compte du responsable
    common.Setup Test

    connexion_deconnexion.Connexion    ${userresponsable}    ${passwordresponsable}

    connexion_deconnexion.Deconnexion

    common.Teardown

TC4 - Connexion et déconnexion avec compte du loueur
    common.Setup Test

    connexion_deconnexion.Connexion    ${userloueur}    ${passwordloueur}

    connexion_deconnexion.Deconnexion

    common.Teardown