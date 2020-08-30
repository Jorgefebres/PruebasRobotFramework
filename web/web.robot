*** Settings ***
Documentation     Diablos señorito
Library           SeleniumLibrary

*** Variables ***
${url}            http://localhost:4200/
${url_login}    http://localhost:4200/inicio
${url_establecimiento}    http://localhost:4200/delivery/configuracion/establecimiento
${url_promociones}    http://localhost:4200/cliente/productos/promociones
${browser}        chrome 

*** Keywords ***
Open my Browser
    Open Browser    ${url}    browser=${browser}
    Set Window Position    0    0
    Set Window Size    960    1000

Close Browsers
    Close All Browsers

Open Login
    Go To    ${url_login}
    Click Element   //*[@id="iniciaSesion"]
    Wait Until Element Is Visible    //*[@id="mat-tab-label-0-1"]    100
    Click Element   //*[@id="mat-tab-label-0-1"]
    Input Text      //*[@id="mat-input-2"]      Sideral
    Input Text      //*[@id="mat-input-3"]      12345
    Click Element   //*[@id="ingresarLogin"]

Open Establecimiento
    Go To    ${url_establecimiento}

Open Promociones
    Go To    ${url_establecimiento}

Login
    Click Element   //*[@id="iniciaSesion"]
    Click Element   //*[@id="mat-tab-label-0-1"]
    Input Text      //*[@id="mat-input-2"]      Sideral
    Input Text      //*[@id="mat-input-3"]      12345
    Click Element   //*[@id="ingresarLogin"]

Text Area
    [Arguments]    ${nombre}    ${descripcion}  ${ruc}  ${dni}  ${correo}   ${telefono}    ${direccion}
    Input Text    //*[@id="nombreEstablecimiento"]    ${nombre}
    Input Text    //*[@id="descripcionEstablecimiento"]    ${descripcion}
    Input Text    //*[@id="rucEstablecimiento"]    ${ruc}
    Input Text    //*[@id="dniEstablecimiento"]    ${dni}
    Input Text    //*[@id="correoEstablecimiento"]    ${correo}
    Input Text    //*[@id="telefonoEstablecimiento"]    ${telefono}
    Input Text    //*[@id="direccionEstablecimiento"]    ${direccion}

Result
    [Arguments]    ${mensaje}
    Element Text Should Be      //*[@id="labelTest"]    ${mensaje}
