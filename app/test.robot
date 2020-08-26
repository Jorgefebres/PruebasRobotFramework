*** Settings ***
Library  AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    8.0.0
${DEVICE_NAME}    92GBB18724505711
${Activity_NAME}    com.sreasons.yoin.activity.cliente.InicioActivity
${PACKAGE_NAME}    com.sreasons.yoin
*** Keywords ***
Open YOIN
  Open Application   ${REMOTE_URL}
  ...    platformName=${PLATFORM_NAME}
  ...    platformVersion=${PLATFORM_VERSION}
  ...    deviceName=${DEVICE_NAME}
  ...    newCommandTimeout=2500
  ...    appActivity=${Activity_NAME}
  ...    appPackage=${PACKAGE_NAME}
  ...    automationName=UiAutomator2

*** Test Cases ***
First Test cases
    Open YOIN

Second
    Wait Until Element Is Visible    id=com.sreasons.yoin:id/numero    100
    # id=com.sreasons.yoin:id/numero
    Input Text    id=com.sreasons.yoin:id/numero    922075739
    # id=com.sreasons.yoin:id/password
    Input Text    id=com.sreasons.yoin:id/password    qwerty123
    # id=com.sreasons.yoin:id/signIn
    Click Element    id=com.sreasons.yoin:id/signIn

    Close Application


    