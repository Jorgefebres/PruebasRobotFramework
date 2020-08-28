*** Settings ***

Library    RequestsLibrary
Library    OperatingSystem
Library    Collections
Library    JSONLibrary

*** Variables ***

${API_URL}    http://desarrollo.sreasons.com:8081  

#DATO EN URL
${version}    1 

*** Test Cases ***
Call CreateUpdatePlace
  Create Session    API    ${API_URL}

  ${json}    load json from file    ${CURDIR}\\jsonPin.json 
 
#  ${resp}    get request    API    /   data=${req_json}    #?idEmpresa=1&telefono=%2B51935207600&tipoPin=2&longitud=4     
  
  ${resp}    get request    API    /msseguridadapps/api/v${version}/usuarios/pin    params=${json}

  Status Should Be    200    ${resp}

  log to console    ${resp.status_code}
  log to console    ${resp.content}