*** Settings ***

Library    RequestsLibrary
Library    Collections
Library    JSONLibrary
Library    OperatingSystem

*** Variables ***

#URL_BASE 
${API_URL}    http://desarrollo.sreasons.com:8081

#DATO EN URL
${version}    1
${id_empresa}    1
${id_modulo}    51  

#DATOS DEL USUARIO A REGISTRAR
${telefono}    +51935207650
${contrasenia}    87654321
${suscribir_a}    entidad

*** Test Cases ***

Guardar datos de los usuarios a registrar

  Create Session    mysessions    ${API_URL}
  Agregar numero    ${suscribir_a}
  Agregar contrasenia 
  Agregar usuario   
  Agregar nombreUsuario   

Post Usuarios  
  ${json}    load json from file    ${CURDIR}\\json.json 
  ${e2e}=    Set Variable    /msseguridadapps/api/v${version}/usuarios/${id_empresa}/registrar/${id_modulo}
  ${resp}    post request    mysessions    ${e2e}    json=${json}     
  log to console    ${resp.status_code}
  log to console    ${resp.content}
  Status Should Be    200    ${resp}    

*** Keywords ***

Agregar numero

    [Arguments]    ${suscribir_a}
    ${json_obj}=    Load JSON From File     ${CURDIR}\\json.json
    ${object_to_add_telefono}=   Create Dictionary   telefono=${telefono} 
    ${json_obj}=    Add Object To Json    ${json_obj}    $..${suscribir_a}    ${object_to_add_telefono}
    ${new_obj}=    Convert JSON To String    ${json_obj}
    Create File    json.json    ${new_obj}    UTF-8

Agregar contrasenia
  
    ${json_obj}=    Load JSON From File     ${CURDIR}\\json.json
    ${object_to_add_contrasenia}=   Create Dictionary   contrasenha=${contrasenia} 
    ${json_obj}=    Add Object To Json    ${json_obj}    $..$    ${object_to_add_contrasenia}
    ${new_obj}=    Convert JSON To String    ${json_obj}
    Create File    json.json    ${new_obj}    UTF-8
    
Agregar usuario

    ${json_obj}=    Load JSON From File     ${CURDIR}\\json.json
    ${object_to_add_telefono}=   Create Dictionary   usuario=${telefono} 
    ${json_obj}=    Add Object To Json    ${json_obj}    $..$    ${object_to_add_telefono}
    ${new_obj}=    Convert JSON To String    ${json_obj}
    Create File    json.json    ${new_obj}    UTF-8

    
Agregar nombreUsuario

    ${json_obj}=    Load JSON From File     ${CURDIR}\\json.json
    ${object_to_add_telefono}=   Create Dictionary   nomUsuario=${telefono} 
    ${json_obj}=    Add Object To Json    ${json_obj}    $..$    ${object_to_add_telefono}
    ${new_obj}=    Convert JSON To String    ${json_obj}
    Create File    json.json    ${new_obj}    UTF-8

    