*** Settings ***
Documentation    This is test script
Library  SeleniumLibrary  run_on_failure=Nothing
Variables  ../PO/selectors/po1.py


*** Variables ***



*** Test Cases ***
 Test file Site
    [Documentation]  Test1- Open antel in browser
    [Tags]  Smoke
    Open Browser  https://configuraciones.antel.com.uy/  chrome
    Click Link  ${MARCA_APPLE}
    Click Element  ${IPHONE_13}
    Click Element  ${CONF_INTERNET}
    Click Element  ${PREPAGO}
    log  ${MARCA_APPLE} 

*** Keywords ***
