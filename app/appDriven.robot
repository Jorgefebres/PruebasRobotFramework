*** Settings ***
Library           DataDriver    dd.xls
Resource          app.robot

Suite Setup       Open YOIN
Test Template     Invalid Text

*** Test Cases ***
Invalid Text 
    Invalid Text    ${numero}    ${password}

*** Keywords ***
Invalid Text
    [Arguments]    ${numero}    ${password}
    Add Input    ${numero}    ${password}