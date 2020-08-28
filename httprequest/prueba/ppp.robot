*** Settings ***
Library    JSONLibrary
Library    OperatingSystem

*** Variables ***
${SUBSCRIBER_A}    phone1
${contrasenia}    102346578

*** Test Cases ***
testcase
   test    ${SUBSCRIBER_A}
   test2

*** Keywords ***
test
    [Arguments]    ${SUBSCRIBER_A}
    ${json_obj}=    Load JSON From File     sample.json
    ${object_to_add}=   Create Dictionary   driver=1
    ${json_obj}=    Add Object To Json    ${json_obj}    $..${SUBSCRIBER_A}    ${object_to_add}
    ${new_obj}=    Convert JSON To String    ${json_obj}
    Create File    sample.json    ${new_obj}    UTF-8

test2
    ${json_obj}=    Load JSON From File     sample.json
    ${object_to_add}=   Create Dictionary   contrasenia=${contrasenia}
    ${json_obj}=    Add Object To Json    ${json_obj}    $..$    ${object_to_add}
    ${new_obj}=    Convert JSON To String    ${json_obj}
    Create File    sample.json    ${new_obj}    UTF-8