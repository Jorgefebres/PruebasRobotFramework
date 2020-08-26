*** Settings ***
Library           DataDriver    DataDriven.xls
Resource          web.robot

Suite Setup       Open my Browser
Suite Teardown    Close Browsers
Test Setup        Open Establecimiento
Test Template     Invalid Text

*** Test Cases ***
Invalid Text 
    Invalid Text    ${nombre}    ${descripcion}  ${ruc}  ${dni}  ${correo}   ${telefono}    ${direccion}    ${mensaje}

*** Keywords ***
Invalid Text
    [Arguments]    ${nombre}    ${descripcion}  ${ruc}  ${dni}  ${correo}   ${telefono}    ${direccion}     ${mensaje}
    Text Area    ${nombre}    ${descripcion}  ${ruc}  ${dni}  ${correo}   ${telefono}    ${direccion}
    Log    "Estas pruebas :v"
    Sleep    5
    Result      ${mensaje}