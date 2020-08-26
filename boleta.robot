*** Settings ***
Documentation   Que Dios nos ayude
Library    SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  http://localhost:4200/auth/login
${docSerie_titulo}    Serie del Documento
${docSerie_valor}   B003
${docMoneda_titulo}    Moneda
${docMoneda_valor}    1
*** Test Cases ***
P003 Boleta - Documento valores iniciales
    Open Browser    ${url}    ${browser}
    Wait Until Element Is Visible   //*[@id="0000000002_frmLogin_inUsuario"]
    loginAplicacion
    Sleep    5
    clickBoletas
    Sleep    5
    ${lab_SerieDocumento}   Set Variable    //*[@id="0401040202_frmDd_lblSerieDocumento"]
    Wait Until Element Is Visible    ${lab_SerieDocumento}
    Element Should Be Enabled    ${lab_SerieDocumento}
    Element Text Should Be    ${lab_SerieDocumento}    ${docSerie_titulo}
    ${sel_SerieDocumento}   Set Variable    //*[@id="0401040203_frmDd_cklSerieDocumento"]
    Wait Until Element Is Visible    ${sel_SerieDocumento}
    Element Should Be Enabled    ${sel_SerieDocumento}
    Wait Until Element Contains    ${sel_SerieDocumento}    ${docSerie_valor}
    ${lab_Moneda}   Set Variable    //*[@id="0401040204_frmDd_lblMoneda"]
    Wait Until Element Is Visible    ${lab_Moneda}
    Element Should Be Enabled    ${lab_Moneda}
    Element Text Should Be    ${lab_Moneda}    ${docMoneda_titulo}
    ${sel_Moneda}   Set Variable    //*[@id="0401040204_frmDd_cklMonedaDocumento"]
    Wait Until Element Is Visible    ${sel_Moneda}
    Element Should Be Enabled    ${sel_Moneda}
    ${otra}   Get Selected List Label    ${sel_Moneda}
    Log To Console    message
    Log To Console    ${otra}

    Close Browser


*** Keywords ***
loginAplicacion
  Input Text    //*[@id="0000000002_frmLogin_inUsuario"]    DEMO-PVLG
  Input Password    //*[@id="0000000003_frmLogin_inPassword"]    12345
  Click Element    //*[@id="0000000004_frmLogin_btnIngresar"]

clickBoletas
  Wait Until Element Is Visible   //*[@id="0000000302_dvMenuInicioBoleta"]
  Click Element                   //*[@id="0000000302_dvMenuInicioBoleta"]
