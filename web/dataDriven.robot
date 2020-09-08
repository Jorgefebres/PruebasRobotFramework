*** Settings ***
Library           DataDriver    DataDriven.xls
Resource          web.robot

Suite Setup       Open my Browser
Suite Teardown    Close Browsers
Test Setup        Open Login
Test Template     Invalid Text

*** Test Cases ***
Invalid Text 
    Invalid Text    ${nombre}    ${ruc}   ${correo}   ${telefono}    ${direccion}

*** Keywords ***
Invalid Text
    [Arguments]    ${nombre}   ${ruc}  ${correo}   ${telefono}    ${direccion}
    Text Area    ${nombre}   ${correo}   ${telefono}    ${direccion}
    Log    "Estas pruebas :v"
    Sleep    2