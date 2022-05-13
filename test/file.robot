*** Settings ***
Documentation    This is test script
Library  SeleniumLibrary  


*** Variables ***


*** Test Cases ***
 Test file Site
    [Documentation]  Test1- Open google in browser
    [Tags]  Smoke
    #Open Browser  https://www.google.com/    chrome
    Open Browser  https://www.google.com/  chrome
    Click Element  css:input[aria-label='Me siento con suerte ']


*** Keywords ***