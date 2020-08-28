*** Settings ***
Library    REST    
Library    JSONLibrary
Documentation   Test Para probar los servicios del loguin.
...             Utilizaremos Authorization.


*** Variables ***
#URL_BASE
${url_base}    http://desarrollo.sreasons.com:8081

#DATO EN URL
${version}    1
${id_empresa}    1
${id_modulo}    51  

*** Test Cases ***
Post Loguin

    Set Headers    { "authorization": "Basic KzUxOTM1MjA3NjAwOjg3NjU0MzIx"}
    ${resp}    POST        ${url_base}/msseguridadapps/api/v${version}/usuarios/${id_empresa}/login/${id_modulo}    
    Integer     response status           200 
    ${accessToken}=    get value from json      ${resp}    $.accessToken  
    log to console    ${accessToken}     
    Output    response


